"""
Smart City Waste Collection System
Main entry point for running the application
"""
import sys
import os

# Add backend to Python path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'backend'))

from backend.app import create_app

if __name__ == '__main__':
    app = create_app()
    print("=" * 70)
    print("🌍 SMART CITY WASTE COLLECTION SYSTEM - STARTING")
    print("=" * 70)
    print("\n✅ Starting Flask application...")
    print("📍 Open your browser: http://localhost:5000")
    print("\n⚙️  Server is running on http://127.0.0.1:5000")
    print("🛑 Press CTRL+C to stop the server\n")
    print("=" * 70 + "\n")
    app.run(debug=True, port=5000, host='0.0.0.0')