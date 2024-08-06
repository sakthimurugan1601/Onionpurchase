<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Onion Purchase - Customer Form</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('on1.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Bodoni, sans-serif;
        }
        form {
            background: rgba(255, 255, 255, 10);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }
        h2 {
            text-align: center;
            margin-bottom: 10px;
            font-family: Bodoni, sans-serif;
            color:red;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 7px;
            box-sizing: border-box;
        }
        textarea {
            height: 100px;
        }
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 9px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: blue;
        }
        .radio-group {
            margin: 10px 0;
        }
        .radio-group label {
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form action="CustomerServlet" method="post">
        <h2>Customer Details</h2>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required>
        <label for="address">Address:</label>
        <textarea id="address" name="address" required></textarea>
        <label for="pincode">Pincode:</label>
        <input type="text" id="pincode" name="pincode" required>
        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>
        <label for="district">District:</label>
        <input type="text" id="district" name="district" required>
        <label>Onion Type:</label>
        <div class="radio-group">
            <label><input type="radio" name="onion_type" value="Dried Onion" required> Dried Onion</label>
            <label><input type="radio" name="onion_type" value="Spring Onion" required> Spring Onion</label>
            <label><input type="radio" name="onion_type" value="Fresh Onion" required> Fresh Onion</label>
        </div>
        <label for="kg">KG:</label>
        <input type="number" id="kg" name="kg" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
