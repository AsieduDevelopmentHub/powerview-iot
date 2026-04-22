@echo off
cd dashboard

REM =========================
REM ROOT FILES
REM =========================
if not exist package.json type nul > package.json
if not exist next.config.js type nul > next.config.js
if not exist tailwind.config.js type nul > tailwind.config.js
if not exist .env type nul > .env

REM =========================
REM APP ROUTES
REM =========================
mkdir app\auth 2>nul
mkdir app\dashboard 2>nul
mkdir app\devices 2>nul
mkdir app\billing 2>nul
mkdir app\analytics 2>nul
mkdir app\settings 2>nul
mkdir app\admin 2>nul

if not exist app\layout.js type nul > app\layout.js
if not exist app\page.js type nul > app\page.js

if not exist app\auth\page.js type nul > app\auth\page.js
if not exist app\dashboard\page.js type nul > app\dashboard\page.js
if not exist app\devices\page.js type nul > app\devices\page.js
if not exist app\billing\page.js type nul > app\billing\page.js
if not exist app\analytics\page.js type nul > app\analytics\page.js
if not exist app\settings\page.js type nul > app\settings\page.js
if not exist app\admin\page.js type nul > app\admin\page.js

REM =========================
REM COMPONENTS
REM =========================
mkdir components 2>nul

if not exist components\Sidebar.js type nul > components\Sidebar.js
if not exist components\Navbar.js type nul > components\Navbar.js
if not exist components\DeviceCard.js type nul > components\DeviceCard.js
if not exist components\EnergyChart.js type nul > components\EnergyChart.js
if not exist components\BillingCard.js type nul > components\BillingCard.js
if not exist components\StatusBadge.js type nul > components\StatusBadge.js

REM =========================
REM LIB
REM =========================
mkdir lib 2>nul

if not exist lib\api.js type nul > lib\api.js
if not exist lib\supabase.js type nul > lib\supabase.js
if not exist lib\utils.js type nul > lib\utils.js

REM =========================
REM STYLES
REM =========================
mkdir styles 2>nul

if not exist styles\globals.css type nul > styles\globals.css

echo Dashboard structure updated successfully (existing files skipped).
pause