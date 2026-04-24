# ElectiGuide: The #1 AI-Powered Civic Navigator

ElectiGuide is a state-of-the-art civic tech platform designed to turn first-time voters into lifelong participants in democracy. It provides a personalized, multimodal experience powered by cutting-edge Google AI.

---

## 🏆 Core Features

### 🧠 1. AI-Powered Personalized Roadmap
Using a sophisticated **Diagnostic Quiz**, the assistant leverages **Google Gemini** to analyze the user's specific readiness and generate a bespoke 3-step preparation plan.
- **Dynamic Logic**: Automatically updates the user's checklist based on their diagnostic results.
- **Deep Personalization**: Adapts to the user's state and knowledge level.

### 🎙️ 2. Multimodal Interaction (Voice + Text)
ElectiGuide breaks accessibility barriers by integrating the **Web Speech API**. 
- **Voice-to-Task**: Users can speak their questions naturally, and CivicBot will respond instantly.
- **Seamless UX**: Real-time visual feedback when the AI is "listening" or "thinking".

### 📍 3. Interactive Polling Navigator
A custom-built, premium **Polling Map** integration that helps users visualize their destination.
- **Zip-Code Search**: Dynamic search using Google Maps & Places API.
- **Visual Pins**: Interactive map pins that link to specific location details.

### 🎨 4. Premium Motion Design & 3D Visuals
- **Ballot Box Animation**: A custom pure-CSS 3D ballot box with a smooth paper-insertion animation.
- **Celebration Engine**: A custom confetti system that triggers upon 100% preparation.
- **Glassmorphism 2.0**: Professional SaaS-grade depth and blur effects.

---

## 🚀 Google Cloud Deployment

ElectiGuide is optimized for **Google Cloud Run**. To deploy:

1. **Enable APIs**:
   ```bash
   gcloud services enable run.googleapis.com \
                          generativelanguage.googleapis.com \
                          maps-backend.googleapis.com \
                          places-backend.googleapis.com \
                          geocoding-backend.googleapis.com
   ```

2. **Deploy to Cloud Run**:
   ```bash
   gcloud run deploy electiguide --source . --platform managed --allow-unauthenticated
   ```

---

## ⚙️ Running Locally

ElectiGuide is built for speed and simplicity. You can start a local server instantly:

### For Windows:
Double-click `run_local.bat` or run `./run_local.bat` in PowerShell.

### For Linux/Mac:
Run `chmod +x run_local.sh && ./run_local.sh` in your terminal.

Once started, open **http://localhost:8000**.

---

## 🧪 5. Built-in Automated Testing
ElectiGuide includes a custom-built **Integrated Test Suite** for real-time validation.
- **How to Run**: Press `Ctrl + Shift + T` anywhere in the application.
- **Coverage**: UI components, LocalStorage integrity, Gemini Fallback logic, and Progress Engine.

---

## 📝 Setup & AI Key
To enable live intelligence:
1. **Google Gemini**: Open `assistant.js` and replace `API_CONFIG.KEY` with your Gemini API Key.
2. **Google Maps**: Open `index.html` and replace `YOUR_API_KEY` in the Maps script tag with your Google Maps API Key.

---

## 🛡️ Error Handling & Security
- **Retry Logic**: Automatic exponential backoff for API rate limits.
- **Graceful Failures**: User-friendly error messages with "Retry" actions.
- **Data Safety**: All state is persisted locally; no sensitive user data is stored externally.
