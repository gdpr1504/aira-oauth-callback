# Aira OAuth Callback

This is the OAuth callback page for the Aira Safari Extension.

## Setup Instructions

### 1. Update Configuration

Edit `index.html` and update these values in the CONFIG object:

```javascript
const CONFIG = {
  // Your GitHub Pages URL (replace YOUR-USERNAME)
  redirectUri: "https://YOUR-USERNAME.github.io/aira-oauth-callback",
  // Your Google OAuth Client ID
  clientId: "YOUR_GOOGLE_CLIENT_ID_HERE",
  // Your backend API URL
  backendUrl: "http://localhost:8787/api/oauth/google",
};
```

### 2. Deploy to GitHub Pages

1. Create a new repository on GitHub named `aira-oauth-callback`
2. Upload this `index.html` file to the repository
3. Go to repository Settings > Pages
4. Enable GitHub Pages from the main branch
5. Your callback URL will be: `https://YOUR-USERNAME.github.io/aira-oauth-callback`

### 3. Update Google Cloud Console

1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Navigate to APIs & Services > Credentials
3. Find your OAuth 2.0 Client ID
4. Add your GitHub Pages URL to "Authorized redirect URIs"
5. Save changes

### 4. Update Extension

Update the Safari extension to use your GitHub Pages callback URL instead of localhost.

## Files

- `index.html` - The OAuth callback page
- `README.md` - This setup guide

## Testing

1. Make sure your local backend is running on `http://localhost:8787`
2. Update the CONFIG in `index.html` with your details
3. Deploy to GitHub Pages
4. Add the callback URL to Google Cloud Console
5. Test the OAuth flow in the Safari extension

