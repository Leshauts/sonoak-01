# Spotify Player for Raspberry Pi

## Description
A Spotify player application running on Raspberry Pi 4 with DietPi, using librespot-java for Spotify integration and React for the user interface.

## Project Structure
```
root/
├── librespot/           # Librespot-java related files
├── server/              # Node.js REST API server
└── client/              # React frontend application
```

## Prerequisites
- Raspberry Pi 4 running DietPi
- Node.js (v18+)
- Java Runtime Environment (JRE) for librespot-java
- Git

## Installation
1. Clone the repository:
```bash
git clone [your-repository-url]
cd [repository-name]
```

2. Install librespot-java:
```bash
# Instructions will be added
```

3. Install server dependencies:
```bash
cd server
npm install
```

4. Install client dependencies:
```bash
cd ../client
npm install
```

## Development
- Server: `cd server && npm run dev`
- Client: `cd client && npm start`

## Features
- [ ] Spotify playback via librespot-java
- [ ] Current track display (image/title/artist)
- [ ] User playlist management
- [ ] More features coming soon...

## License
[Your chosen license]

## Contributing
[Contributing guidelines]