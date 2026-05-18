# FogLog Privacy Policy

**Last updated**: May 15, 2026  
**Effective date**: May 15, 2026

FogLog ("the Service" or "the App") treats your personal information with care and complies with the General Data Protection Regulation (GDPR), the California Consumer Privacy Act (CCPA), Korea's Personal Information Protection Act, and other applicable laws.

This policy transparently explains what information we collect, how we use it, where we store it, and when we delete it.

---

## 1. Information We Collect

We collect the **minimum information necessary**.

### 1-1. At Sign-up
| Item | Purpose | Storage Location |
|---|---|---|
| Email address | Identity verification (OTP), account recovery | Supabase Auth (Korea region) |
| Display name (optional) | Nickname visible only to you | Local device (SwiftData) |

### 1-2. During Service Use
| Item | Purpose | Storage Location |
|---|---|---|
| Diary content (original) | Personal storage | **Local device only** (never sent to server) |
| Diary content (anonymized) | Shared with other users (when you choose) | Supabase DB |
| Bundle token hash (SHA-256) | Bundle closure verification | Supabase DB |
| Timestamp, weather, location (city level) | Diary metadata | Local device |
| Report reason | Content moderation | Supabase DB |
| Advertising identifier (IDFA, with consent) | AdMob ad delivery | AdMob (Google) |

### 1-3. Information We **Do NOT** Collect
- ❌ Legal name / national ID / phone number
- ❌ Precise location (GPS coordinates) — only city-level
- ❌ Contacts / Photos / Microphone / Camera
- ❌ Other app usage history
- ❌ Advertising identifier (only with your explicit consent)

---

## 2. How We Use Your Information

1. **Identity verification**: Email OTP for sign-up/login
2. **Anonymous board operation**: Only diaries you *explicitly* publish anonymously are visible to other users
3. **Content moderation**: Processing reported inappropriate content
4. **Ad delivery** (with consent): AdMob native ads

We do not use your information for any other purpose. We do not sell or share it with third parties without your consent.

---

## 3. How Anonymization Works

### 3-1. Anonymization Process
When you publish a diary anonymously:
1. Identification information (names, places, companies, schools) is automatically replaced using on-device dictionary + AI
2. Only the **anonymized copy** is sent to the server (original stays on device)
3. Other users see only the anonymized version

### 3-2. Bundle Closure
- The bundle closure token hash (SHA-256) is **immediately deleted** from the server
- Closed bundles cannot be traced back to the author — **not even by yourself**
- This is **permanent anonymity** after closure

### 3-3. Limits of Anonymization
- Writing style (frequent words, slang, spacing habits) is **NOT** protected
- Event uniqueness (specific events only you know) is **NOT** protected
- We cannot prevent intelligence-agency-level tracking

---

## 4. Data Retention

| Item | Retention Period |
|---|---|
| Email (authentication) | Immediately deleted upon account deletion |
| Diaries (local device) | Until you delete them |
| Anonymized bundles (server) | Token hash deleted on closure. Content auto-deactivated on 30+ reports |
| Report records | 6 months (for dispute resolution) |

---

## 5. Security Measures

- **HTTPS / TLS 1.3** enforced: All communication encrypted
- **Double isolation**: Anthropic API keys exist only inside Supabase Edge Functions, never exposed to the app
- **Row Level Security (RLS)**: Database-level access control
- **Local encryption**: Bundle tokens protected via device Keychain (WhenUnlockedThisDeviceOnly)

---

## 6. Your Rights

You can exercise the following rights at any time:

1. **Access / correct your data**: "Profile" screen in the app
2. **Account deletion**: "Profile → Account → Delete Account"
3. **Close anonymous bundles**: "Profile → Active Bundles → Close"
4. **Opt out of advertising identifier**: iOS Settings → Privacy → Tracking

**Effect of account deletion**:
- All local diaries and logs permanently deleted
- Supabase email/session removed
- ⚠️ **Already-published anonymous bundles are NOT automatically deleted** — please close them beforehand (they're already anonymized and untraceable)

For GDPR users (EU): right to access, rectification, erasure, restriction of processing, data portability, and objection.

For CCPA users (California): right to know, delete, and opt out of sale of personal information. We do not sell personal information.

---

## 7. Third-Party Processors

| Service | Provider | Purpose | Data Location |
|---|---|---|---|
| Authentication / DB | Supabase (Singapore Pte. Ltd.) | Account auth, anonymized bundle DB | Korea (ap-northeast-2) |
| AI Anonymization | Anthropic, PBC | Natural language anonymization | United States |
| Advertising | Google LLC (AdMob) | Native ad delivery | Global |
| Weather | Korea Meteorological Administration | Auto weather recording | Korea |

---

## 8. Children Under 13

The Service is not intended for children under 13. If we discover a user is under 13, we will delete the account immediately.

For users between 13 and 16 in the EU (GDPR), parental consent may be required.

---

## 9. International Data Transfers

Your data may be transferred to and processed in countries other than your country of residence (primarily Korea and the United States). We rely on standard contractual clauses where applicable.

---

## 10. Changes to This Policy

We will notify you in-app or on this page 30 days in advance of any material changes.

---

## 11. Contact

Privacy-related inquiries:
- Email: **(email address to be registered)**
- Privacy Officer: **(name to be registered)**

You may also file complaints with your local data protection authority (e.g., the Korea Personal Information Protection Commission at privacy.go.kr, your state Attorney General, or your EU member state's supervisory authority).
