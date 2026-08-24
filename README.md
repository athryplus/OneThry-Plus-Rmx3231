# OneThryPlus for Realme C11 2021 (RMX3231)

> **⚠️ WARNING & DISCLAIMER**  
> **Proceed at your own risk.** Flashing custom ROMs, GSIs, and system modifications carries an inherent risk of bootloops or device malfunction. Always make a full backup before installation.  
> *All included third-party tools and modules belong to their respective creators and developers.*

---

## 📌 Overview

**OneThryPlus** is a dedicated performance and feature-enhancement suite tailored for **LineageOS 20.1 (Android 13 GSI)** on the **Realme C11 2021 (RMX3231)**.

It unifies key Magisk tweaks, Nothing OS typography, display wake fixes, and custom background service scripts (`Service.sh` & `LowRamKill.sh`) to unlock the maximum potential of the device.

---

## ✨ Features & Included Tweaks

### ⚙️ Custom Performance Scripts (By OneThry Plus)
* **`LowRamKill.sh`**: Tweaks system Out-Of-Memory (OOM) management to prevent aggressive background app killing. Vastly improves stability for heavy applications like *Google App*, *Gemini*, and multitasking.
* **`Service.sh`**: Locks hardware performance targets to deliver smooth UI response by ensuring optimal CPU and GPU scaling frequencies (GPU held at 550MHz and CPU up to 1.6GHz).

### 📦 Included Modules & Components
* **Lawnchair 15 (Beta 3)**: Serves as the smooth, highly customizable default launcher.
* **Nothing Font Mod**: Replaces stock system fonts with the sleek Nothing OS typography.
* **Dalvik Hyperthreading & Encore Tweaks**: Enhances runtime execution and pushes UI responsiveness to the maximum limit.
* **Doze Disabler & DT2W Fix**: Resolves black screen issues, AOD bugs, and double-tap-to-wake behavior.
* **GMS Optimization & LiteGapps**: Streamlines background Google Play Services to save RAM and battery.
* **Google Play Fix**: Pre-packaged APK to resolve crash issues on Google Play Store.
* **Custom Wallpapers**: Curated wallpapers tailored for the ROM aesthetics.

---

## 🚦 Feature & Hardware Status

| Feature | Status | Notes |
| :--- | :---: | :--- |
| **Cellular Calls & SMS** | 🟢 Working | Fully functional |
| **Wi-Fi & Bluetooth** | 🟢 Working | Stable |
| **Audio & Speaker** | 🟢 Working | Clean output |
| **Performance Mode** | 🟢 Working | Boosted via custom scripts |
| **ADB & MTP** | 🟢 Working | Fast file transfer & debugging |
| **System Gestures** | 🟢 Working | Smooth navigation |
| **Always-On Display (AOD)** | 🟢 Working | Fixed via Doze Disabler |
| **Double Tap to Wake (DT2W)** | 🟡 Partial | Working, but occasionally buggy |
| **3.5mm Headphone Jack** | 🔴 Broken | Fixable via manual audio patch |
| **System Partition** | 🔒 Read-Only | Standard EROFS / Read-Only GSI layout |

---

## 🛠️ Requirements & Quick Setup

> **Prerequisite:** Root access via Magisk and an unlocked bootloader are **mandatory** (*ROOT is required*).

1. **Unlock Bootloader**: Follow the RMX3231 unlocking guide by **GamingHkr** on YouTube.
2. **Flash Recovery**: Flash `twrp-root-rmx3231.img` via `fastbootd`.
3. **Install GSI**: Flash **LineageOS 20.1 GSI** by **AndyYan**.
4. **Flash OneThryPlus Pack**: Flash the unified module package via Magisk / TWRP.
5. **Set Script Permissions**: Ensure `LowRamKill.sh` and `Service.sh` are set up with proper executable permissions (`chmod +x`).

---

## 👤 Credits & Acknowledgments
* **Developer & Maintainer**: **Alathry+**
* **Base GSI**: LineageOS 20.1 by **AndyYan**
* **Bootloader Unlock Guide**: **GamingHkr**
* Special thanks to all module creators and open-source Android developers.
