# Simple HTTP Server for Live Preview
$port = 3000
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

try {
    $listener.Start()
    Write-Host "🌿 Server running at http://localhost:$port" -ForegroundColor Green
    Write-Host "🔄 Live Preview for Роза Канина Web Project" -ForegroundColor Cyan
    Write-Host "📁 Serving files from: $(Get-Location)" -ForegroundColor Yellow
    Write-Host "⏹️  Press Ctrl+C to stop the server" -ForegroundColor Red
    Write-Host ""
    Write-Host "Available files:" -ForegroundColor White
    
    # List available HTML files
    Get-ChildItem -Path . -Recurse -Filter "*.html" | Select-Object FullName | ForEach-Object {
        $relativePath = $_.FullName.Replace((Get-Location).Path, "").Replace('\', '/')
        Write-Host "  http://localhost:$port$relativePath" -ForegroundColor Gray
    }
    
    while ($listener.IsListening) {
        try {
            $context = $listener.GetContext()
            $request = $context.Request
            $response = $context.Response
            
            $localPath = $request.Url.LocalPath
            if ($localPath -eq "/") {
                $localPath = "/live-preview.html"
            }
            
            # Convert URL path to file system path
            $filePath = Join-Path (Get-Location) ($localPath -replace '/', '\')
            
            if (Test-Path $filePath -PathType Leaf) {
                # Determine content type
                $extension = [System.IO.Path]::GetExtension($filePath).ToLower()
                $contentType = "application/octet-stream"
                
                switch ($extension) {
                    ".html" { $contentType = "text/html; charset=utf-8" }
                    ".css" { $contentType = "text/css" }
                    ".js" { $contentType = "application/javascript" }
                    ".json" { $contentType = "application/json" }
                    ".png" { $contentType = "image/png" }
                    ".jpg" { $contentType = "image/jpeg" }
                    ".gif" { $contentType = "image/gif" }
                    ".svg" { $contentType = "image/svg+xml" }
                }
                
                $content = [IO.File]::ReadAllBytes($filePath)
                $response.ContentLength64 = $content.Length
                $response.ContentType = $contentType
                
                # Add CORS headers
                $response.AddHeader("Access-Control-Allow-Origin", "*")
                $response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate")
                $response.AddHeader("Pragma", "no-cache")
                $response.AddHeader("Expires", "0")
                
                $response.OutputStream.Write($content, 0, $content.Length)
                Write-Host "✅ Served: $localPath" -ForegroundColor Green
            } else {
                $response.StatusCode = 404
                $response.StatusDescription = "Not Found"
                Write-Host "❌ Not found: $localPath" -ForegroundColor Red
            }
            
            $response.Close()
        } catch {
            Write-Host "⚠️  Error: $_" -ForegroundColor Yellow
        }
    }
} catch {
    Write-Host "❌ Server error: $_" -ForegroundColor Red
} finally {
    $listener.Stop()
    Write-Host "🛑 Server stopped" -ForegroundColor Red
}
