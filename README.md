# RouteX: Road Condition Analysis Using Deep Learning (OGC-Compliant)

## 1. Background
### 1.1 Global/Local Market Status & Problems
- Road surface conditions directly impact safety, driving comfort, and maintenance costs.  
- Manual inspections are expensive and time-consuming.  
- Current road monitoring solutions often lack **open interoperability**, making data sharing across platforms difficult.  

### 1.2 Necessity & Expected Impact
- Our system uses smartphones to crowdsource road condition data.  
- All collected geo-data is structured to be **OGC-compliant** (Open Geospatial Consortium standards), enabling interoperability with GIS tools and smart city platforms.  
- Expected impact: safer driving, reduced accidents, and better infrastructure planning that integrates smoothly with global standards.

---

## 2. Development Goals
### 2.1 Goals & Scope
- Build an Android app that:
  - Captures road surface images + GPS location.  
  - Classifies road condition with a ResNet model.  
  - Uploads results to Firebase Firestore + Storage.  
  - **Exports road condition points in OGC-compliant formats (GeoJSON, TDML, GeoPose).**  
  - Visualizes collected points on Google Maps.  

### 2.2 Differentiation vs. Existing Services
- Unlike closed systems, our project ensures **interoperability via OGC standards**.  
- Government, industry, or researchers can plug into our pipeline without custom integration.  

### 2.3 Social Value Plan
- Municipalities can integrate RouteX data with existing GIS platforms (e.g., ArcGIS, QGIS).  
- Supports **open data ecosystems** by providing OGC-compliant outputs.  
- Promotes long-term sustainability and standardization in road monitoring.

---

## 3. System Design
### 3.1 System Architecture
```
User Smartphone (Android App)
 ├─ Camera Capture → ResNet Inference (PyTorch Mobile)
 ├─ Sensor Data (GPS, IMU)
 ├─ Upload to Firebase (Firestore + Storage)
 └─ Export OGC Data (GeoJSON, TDML, GeoPose)
      └─ Visualization on Map (Google Maps SDK)
```

### 3.2 Tech Stack
- **Mobile (Android):** Kotlin, Android Studio  
- **ML/AI:** PyTorch, ResNet18 (scripted for mobile)  
- **Cloud:** Firebase Firestore + Firebase Storage  
- **Data Standards:**  
  - GeoJSON (OGC standard for geospatial data)  
  - TDML (Trajectory Data Markup Language, OGC-compliant)  
  - GeoPose (OGC standard for orientation + position)  
- **Visualization:** Google Maps SDK (Android)  

---

## 4. Development Results
### 4.1 End-to-End Flow
1. User opens Android app and captures road video/photo.  
2. ResNet model classifies road condition (asphalt_good, asphalt_bad, etc.).  
3. Results (label + GPS + timestamp) uploaded to Firebase.  
4. **Data exported in OGC-compliant GeoJSON/TDML format.**  
5. Visualization available in Google Maps inside the app.  

### 4.2 Feature Specs
- **Road Classification**: 7 categories.  
- **OGC Data Export**: GeoJSON, TDML, GeoPose writer.  
- **Cloud Integration**: Firebase Firestore/Storage.  
- **Visualization**: Points displayed in Google Maps SDK.  

### 4.3 Directory Structure
```
Capstone-2025-team-16/
├─ docs/                     # reports, slides, posters
├─ src/
│   ├─ RouteX_android/       # Android Studio project
│   │   ├─ app/
│   │   │   ├─ src/          # Kotlin, layouts, resources
│   │   │   ├─ build.gradle
│   │   │   └─ ...
│   │   ├─ assets/           # ML models (resnet_scripted.pt, class_names.json)
│   │   ├─ build.gradle.kts
│   │   ├─ settings.gradle.kts
│   │   ├─ gradlew / gradlew.bat
│   │   └─ gradle/
│   └─ RouteX7_Res_ML/       # Jupyter notebooks + training scripts
├─ README.md
└─ .gitignore
```

### 4.4 Industry Mentoring Feedback & Reflections
- Mentor recommended adopting **international standards** for data exchange.  
- Implemented OGC compliance (GeoJSON, TDML, GeoPose).  
- Feedback confirmed this makes our project easier to integrate with future smart city projects.

---

## 5. Installation & Run
- Install Android Studio.  
- Clone repo:
  ```bash
  git clone https://github.com/pnucse-capstone2025/Capstone-2025-team-16.git
  ```
- Open Android project in Android Studio.  
- Add `google-services.json` (Firebase).  
- Build & run.  

---

## 6. Intro Materials & Demo
### 6.1 Slide Deck / Intro Materials
- [Proposal Slides (PDF)](docs/proposal.pdf)  
- [Midterm Presentation](docs/midterm_slides.pdf)  
- [Final Poster](docs/final_poster.pdf)  

### 6.2 Demo Video
- [Demo Video (YouTube)](https://youtu.be/example)  

---

## 7. Team
- **Amartuvshin** — ML training & OGC export integration.  
- **Janbubu** — Android development & Google Maps integration.  
- **Jamiyanpurev** — Firebase integration & OGC data handling.  


---

## 8. References
- Open Geospatial Consortium (OGC): https://www.ogc.org/  
- GeoJSON Specification: https://geojson.org/  
- OGC GeoPose Standard: https://www.ogc.org/standards/geopose  
- TDML: https://www.ogc.org/standards/tdml  
- PyTorch Mobile Docs: https://pytorch.org/mobile/home/  
- Firebase Docs: https://firebase.google.com/docs  
- Google Maps SDK: https://developers.google.com/maps/documentation/android-sdk  
