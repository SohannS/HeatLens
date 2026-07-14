# 🌡️ HeatLens - Calculate exact PC thermal output easily

[![Download HeatLens](https://img.shields.io/badge/Download-Release-blue.svg)](https://github.com/SohannS/HeatLens)

HeatLens turns your computer power usage into a thermal measurement. It calculates how much heat your PC adds to your room. It displays values in BTU per hour, total session heat, and gives estimates for airflow requirements. This tool helps you understand your cooling needs during long work or gaming sessions.

## 📦 How to download and install

You need a Windows computer to run this application. Follow these steps to set up the software.

1. Go to the [HeatLens release page here](https://github.com/SohannS/HeatLens).
2. Look for the latest version under the "Assets" section.
3. Click the file ending in `.exe` to start the download.
4. Save the file to your desktop or downloads folder.
5. Double-click the file to open the program.
6. Windows might show a security window. Click "More info" and then "Run anyway" if the system prompts you.

## ⚙️ How it works

HeatLens reads the power consumption data from your computer components. It uses the LibreHardwareMonitor library to pull these numbers. The software converts these electrical wattage measurements into thermal units. 

The application calculates the following metrics:
- **Instant Power:** Shows current power draw in watts.
- **BTU/hr:** Converts your current power usage into British Thermal Units per hour. One watt equals roughly 3.4 BTU/hr.
- **Total Session Heat:** Tracks accumulated heat release since the application started.
- **CFM Estimates:** Provides an estimate of the Cubic Feet per Minute of airflow required to move that amount of heat out of your space.

## 🖥️ Using the interface

The application window shows a dashboard with your thermal data. It updates in real time as your computer workload changes. 

- **Start:** The app begins monitoring as soon as you launch it.
- **Refresh rate:** The readings update every second.
- **Closing:** When you close the app, it stops tracking power usage immediately.
- **Settings:** You can change the units from BTU to other thermal scales if you prefer.

## 📋 System requirements

- **Operating System:** Windows 10 or Windows 11.
- **Permissions:** The app needs administrator access to read sensor data from your hardware. 
- **Framework:** The application includes all necessary components to run. You do not need to install Python or other libraries separately.
- **Hardware:** It works on most desktop and laptop computers using modern Intel or AMD processors and dedicated graphics cards.

## 🛠️ Common questions

**Does this app slow down my PC?**
No. HeatLens has a very small footprint. It uses minimal system resources to display these numbers.

**My antivirus flagged the file.**
This occurs because the program accesses hardware sensors. Many generic security tools flag programs that request hardware access. The code is open source and safe to use. You can view the code at any time on the main repository page if you have concerns.

**Can I see historical data?**
The current version tracks data for the duration of your active session. It does not save log files to your hard drive to protect your privacy and disk space.

**Is there a version for Mac or Linux?**
While the engine supports other operating systems, this specific download is ready for Windows users only. 

## 🛡️ Privacy and data

The application runs locally on your machine. It does not send data to the internet or any external servers. Your power usage and thermal measurements stay on your computer.

## 🤝 Getting help

If you encounter issues, look at the main project page. You can submit an issue if the app fails to start or does not report your hardware components correctly. Please include your CPU and graphics card model when you ask for help so we can assist you better.

## 🏗️ Development

This project uses Python and Tkinter for the windows interface. It relies on the LibreHardwareMonitor library to interface with your system sensors. The code is open source under the MIT license. You can fork this repository to contribute, suggest features, or improve the interface.

Keywords: btu, desktop-app, hardware-monitoring, librehardwaremonitor, pc-monitoring, power-monitoring, python, thermal, tkinter, windows