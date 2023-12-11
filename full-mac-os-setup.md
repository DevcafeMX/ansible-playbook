# Full Mac Setup Process (for José and Trace)

Most of the things listed in here are based on a note that I have on my Craft docs. Some of the things listed in here I haven't automated

## Initial steps on a new Mac

- Sign into iCloud and enable find my (This should be done as soon as the new Mac is turned on).
- Enable FileVault
- Install Ansible (more details in [README.md](./README.md)).
- Install zsh
- Install the following Apps:
  - Install [Microsoft 365](https://www.microsoft.com/es-mx/microsoft-365/microsoft-office) and remove/opt-out from:
    - OneDrive
    - PowerPoint
    - Teams
    - OneNote
    - Outlook
  - Bartender 5
  - Arc browser
  - OBS
  - Steam
  - Things
  - Pixelmator Pro
  - Goodnotes 6
  - Craft
- Manual settings to change
  - System Preferences:
    - Accessibility > Display > Reduce Motion
    - Keyboard > Input Sources > Add English or Latin American
    - Keyboard > Keyboard shortcuts > Mission Control > Move left (right option + left ) and Move Right (right option + right)
  - Dock:
    - Add Applications and Downloads
    - Turn Hiding on and Magnification on
- Configure Tailscale
  - Set up my NAS shortcuts
  
## On the previous Mac

- Deauthorize Apple Music in Music App
- Follow the steps from the Apple [guide](https://support.apple.com/en-au/HT212749)
