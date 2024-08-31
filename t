<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Components Order Form 🖥️</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f6c6c6, #f2e5f8);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .order-form {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 1000px;
            display: flex;
            flex-direction: row;
            gap: 20px;
            border: 2px solid #d6a4a4;
        }

        .order-form h1 {
            text-align: center;
            font-size: 28px;
            color: #f06c6c;
            margin-bottom: 20px;
            font-weight: 700; /* Bold weight for a professional look */
        }

        .form-section {
            flex: 1;
            padding: 15px;
            border: 1px solid #f06c6c;
            border-radius: 8px;
            background-color: #fef5f5;
        }

        .form-section legend {
            font-weight: bold;
            color: #f06c6c;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }

        input, select, button {
            width: calc(100% - 24px);
            padding: 12px;
            margin-bottom: 15px;
            border: 2px solid #f06c6c;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
            background-color: #fff;
        }

        input:focus, select:focus {
            border-color: #f4a6a6;
            outline: none;
        }

        button {
            background: #f06c6c;
            color: #fff;
            cursor: pointer;
            border: none;
            font-size: 18px;
            font-weight: bold;
            margin-top: 30px; /* Adjusted margin-top to move the button lower */
            transition: background 0.3s ease;
        }

        button:hover {
            background: #e55d5d;
        }

        #orderSummary {
            display: none;
            text-align: center;
            flex-basis: 100%;
            border: 1px solid #f06c6c;
            border-radius: 8px;
            background-color: #fef5f5;
            padding: 20px;
        }

        #orderSummary h2 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #f06c6c;
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>

    <div class="order-form" id="orderFormContainer">
        <div class="form-section">
            <h1>Order Your Computer Components 🖥️</h1>
            
            <form id="componentForm">
                <!-- Customer Information -->
                <fieldset>
                    <legend>Customer Information</legend>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" required>
                </fieldset>
        </div>
        <div class="form-section">
                <!-- Component Selection -->
                <fieldset>
                    <legend>Choose Your Components</legend>
                    
                    <label for="processor">Processor:</label>
                    <select id="processor" name="processor">
                        <option value="i5">Intel i5</option>
                        <option value="i7">Intel i7</option>
                        <option value="ryzen5">AMD Ryzen 5</option>
                        <option value="ryzen7">AMD Ryzen 7</option>
                    </select>

                    <label for="ram">RAM:</label>
                    <select id="ram" name="ram">
                        <option value="8gb">8 GB</option>
                        <option value="16gb">16 GB</option>
                        <option value="32gb">32 GB</option>
                    </select>

                    <label for="storage">Storage:</label>
                    <select id="storage" name="storage">
                        <option value="256gb">256 GB SSD</option>
                        <option value="512gb">512 GB SSD</option>
                        <option value="1tb">1 TB SSD</option>
                    </select>

                    <label for="gpu">Graphics Card:</label>
                    <select id="gpu" name="gpu">
                        <option value="gtx1650">NVIDIA GTX 1650</option>
                        <option value="rtx3060">NVIDIA RTX 3060</option>
                        <option value="rtx3080">NVIDIA RTX 3080</option>
                    </select>
                </fieldset>

                <!-- Submit Button -->
                <button type="submit">Submit Order</button>
            </form>
        </div>
    </div>

    <!-- Order Summary -->
    <div id="orderSummary" class="hidden">
        <h2>Your Order Summary</h2>
        <p id="summaryText"></p>
        <button onclick="resetForm()">Place Another Order</button>
    </div>

    <script>
        document.getElementById('componentForm').addEventListener('submit', function(e) {
            e.preventDefault(); // Prevent form submission

            // Gather form data
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const processor = document.getElementById('processor').value;
            const ram = document.getElementById('ram').value;
            const storage = document.getElementById('storage').value;
            const gpu = document.getElementById('gpu').value;

            // Create order summary
            const summaryText = `
                <strong>Name:</strong> ${name} <br>
                <strong>Email:</strong> ${email} <br>
                <strong>Phone:</strong> ${phone} <br>
                <strong>Processor:</strong> ${processor} <br>
                <strong>RAM:</strong> ${ram} <br>
                <strong>Storage:</strong> ${storage} <br>
                <strong>Graphics Card:</strong> ${gpu} <br>
            `;
            
            document.getElementById('summaryText').innerHTML = summaryText;
            
            // Hide form container and show summary
            document.getElementById('orderFormContainer').style.display = 'none';
            document.getElementById('orderSummary').style.display = 'block';
        });

        function resetForm() {
            // Reset form and show it again
            document.getElementById('componentForm').reset();
            document.getElementById('orderFormContainer').style.display = 'flex'; // Show form container
            document.getElementById('orderSummary').style.display = 'none';
        }
    </script>
</body>
</html>
