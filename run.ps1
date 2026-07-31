# JobAssistantApp Launcher
# This script activates the virtual environment and runs the app

# Activate virtual environment
& ".\venv\Scripts\Activate.ps1"

# Check if .env file exists for API key
if (Test-Path ".env") {
    Write-Host "Loading environment variables from .env..." -ForegroundColor Green
    Get-Content .env | ForEach-Object {
        if ($_ -match "^\s*(.+?)=(.*)$") {
            $key = $matches[1].Trim()
            $value = $matches[2].Trim()
            [Environment]::SetEnvironmentVariable($key, $value, "Process")
        }
    }
}

# Run Streamlit
Write-Host "Starting JobAssistantApp..." -ForegroundColor Green
streamlit run app.py
