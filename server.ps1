# server.ps1
# Script para levantar un servidor local para Trendy Spa For Men
# Uso: haz clic derecho en este archivo > "Ejecutar con PowerShell"

$port = 8080
$path = Split-Path -Parent $MyInvocation.MyCommand.Definition

Write-Host "======================================" -ForegroundColor Cyan
Write-Host "  Trendy Spa For Men - Servidor Local" -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Sirviendo archivos desde: $path" -ForegroundColor Yellow
Write-Host "Abre tu navegador en:     http://localhost:$port" -ForegroundColor Green
Write-Host ""
Write-Host "Presiona Ctrl+C para detener el servidor." -ForegroundColor Gray
Write-Host ""

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    $localPath = $request.Url.LocalPath.TrimStart('/')
    if ($localPath -eq '') { $localPath = 'index.html' }

    $filePath = Join-Path $path $localPath

    if (Test-Path $filePath -PathType Leaf) {
        $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
        $mimeTypes = @{
            '.html' = 'text/html; charset=utf-8'
            '.css'  = 'text/css'
            '.js'   = 'application/javascript'
            '.png'  = 'image/png'
            '.jpg'  = 'image/jpeg'
            '.jpeg' = 'image/jpeg'
            '.svg'  = 'image/svg+xml'
            '.ico'  = 'image/x-icon'
        }
        $mime = if ($mimeTypes[$ext]) { $mimeTypes[$ext] } else { 'application/octet-stream' }
        $content = [System.IO.File]::ReadAllBytes($filePath)
        $response.ContentType = $mime
        $response.ContentLength64 = $content.Length
        $response.OutputStream.Write($content, 0, $content.Length)
        Write-Host "200  $($request.Url.LocalPath)" -ForegroundColor Green
    } else {
        $response.StatusCode = 404
        $msg = [System.Text.Encoding]::UTF8.GetBytes("404 - Archivo no encontrado")
        $response.OutputStream.Write($msg, 0, $msg.Length)
        Write-Host "404  $($request.Url.LocalPath)" -ForegroundColor Red
    }

    $response.OutputStream.Close()
}
