# Simple HTTP Server
$port = 8080
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

Write-Host "Starting server on port $port..." -ForegroundColor Green

try {
    $listener.Start()
    Write-Host "Server running at http://localhost:$port" -ForegroundColor Green
    Write-Host "Press Ctrl+C to stop" -ForegroundColor Yellow
    
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $localPath = $request.Url.LocalPath
        if ($localPath -eq "/") {
            $localPath = "/live-preview.html"
        }
        
        $filePath = Join-Path (Get-Location) ($localPath -replace "/", "\")
        
        if (Test-Path $filePath) {
            $content = [IO.File]::ReadAllBytes($filePath)
            $response.ContentLength64 = $content.Length
            $response.OutputStream.Write($content, 0, $content.Length)
            Write-Host "Served: $localPath"
        } else {
            $response.StatusCode = 404
            $response.Close()
        }
    }
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
} finally {
    $listener.Stop()
}
