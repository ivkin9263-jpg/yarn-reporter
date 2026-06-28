@echo off
echo ===== Ruff check =====
ruff check . --fix
if %errorlevel% neq 0 (
    echo Ruff found errors!
    exit /b %errorlevel%
)
echo Ruff OK!
echo.
echo ===== Pytest =====
python -m pytest -q
if %errorlevel% neq 0 (
    echo Tests failed!
    exit /b %errorlevel%
)
echo Pytest OK!
echo.
echo ===== All checks passed! =====