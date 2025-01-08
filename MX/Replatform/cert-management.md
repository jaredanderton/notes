
## MX Client to Access
### Apple 
- MX wants `Developer` to App
- [apple developer roles](https://developer.apple.com/help/account/manage-your-team/roles/)
- _Cannot_ create certificates, but _can_ upload builds
  - Uploading builds is _all_ we ever want to do with 
### Google
- Figure out the appropriate roles/permissions

## Remote Storage Setup
- S3 or Git or GCP
- Figure out access control

### Options
- We own git
- Access Options:
  - Invite them to Repo
    - They must create access token
  - We generate token an provide
    - we need to cycle yearly? 
      - lower lift than certs & profiles
      - GCP / AWS alternatives wont need expiring token
        - Do they have they own expiring access control?
  - Somehow, client needs to get token into docker container
    - .env
    - compose
  - Fastlane can run successfully 
  - Fastlane will need to do Apple MFA
    - can we use a non-expiring key? 
    - interactive shell?
    - volume w/ local file? to prevent reauth?
      - when on local osx, keychain stores  
      - do I even care? its 1x per year


## Flow

### Setup/Configure remote strategy that we decide on
### Create Docker to run fastlane in


### MX send Dockerfile to Clients
### Client runs Docker command (1x per year)
- Auth with Apple
- Renew Certificates & Profiles
- Update remote (git or S3 or GCP)
- Hit slack webhook to inform MX that client updated certs
- Should we consider Google Play Signing Assets here too?
- Client is done

### MX Builds System
- Pull source code
- Install certificate & provisioning profiles (pulls from remote)
- Build app
- Upload to builds to app store
- MX delivery is complete

### Client Logs into App Stores
- Creates new version
- Selects builds MX uploaded 
- Any other desired store listing updates
- Submit for review
- Wait for review/approval
- Release

