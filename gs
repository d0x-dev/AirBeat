from pyrogram import Client

API_ID = 12767104
API_HASH = "a0ce1daccf78234927eb68a62f894b97"

with Client("my_account", api_id=API_ID, api_hash=API_HASH) as app:
    print("\n✅ Login successful!")
    print("\nYour STRING_SESSION:\n")
    print(app.export_session_string())
