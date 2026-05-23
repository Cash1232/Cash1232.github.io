<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redirecting to Roblox...</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 50px;
            background-color: #1a1a1a;
            color: #ffffff;
        }
        .loader {
            border: 4px solid #f3f3f3;
            border-top: 4px solid #00b06f;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <h2>Opening Roblox...</h2>
    <div class="loader"></div>
    <p>If the application does not open automatically, make sure Roblox is installed on your device.</p>

    <script>
        // Function to extract URL parameters
        const urlParams = new URLSearchParams(window.location.search);
        const placeId = urlParams.get('placeId');
        const jobId = urlParams.get('jobId');

        if (placeId && jobId) {
            // Construct the Roblox deep link protocol
            const robloxUrl = `roblox://placeId=${placeId}&gameInstanceId=${jobId}`;
            
            // Trigger the native app redirection immediately
            window.location.href = robloxUrl;
        } else {
            document.querySelector('h2').innerText = "Error: Invalid Parameters!";
            document.querySelector('.loader').style.display = 'none';
            document.querySelector('p').innerText = "Please ensure the URL contains both '?placeId=...' and '&jobId=...' attributes.";
        }
    </script>
</body>
</html>
