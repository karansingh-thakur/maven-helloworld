<h1> Hello, This is a test deployement !!! </h1>
<h2>This is an updated deployment</h2>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./calculator.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Calculator</title>
    <Script src="./calculator.js"></Script>
</head>
<body>
    <div class = "calc-container">
        <div class = "display">
            <div class = "switch-container">
                <div class = "switch">
                    <i class="fa fa-sun-o fa-lg color icon-size"></i>
                    <i class="fa fa-moon-o fa-lg color icon-size"></i>
                </div>
            </div>
            <div class="output">
                <label id = "secondary-display" class = "operation"> </label>  
                <label id = "main-display" class = "result">0</label>

            </div>
        </div>
        <div class = "keypad-container">
            <table class="keypad">
                <tbody>
                    <tr>
                        <td><div class="key action-keys" onclick = "actionkeyClickHandler('CLEAR-ALL')">AC</div></td>
                        <td><div class="key action-keys" onclick = "actionkeyClickHandler('CHANGE-SIGN')">+/-</div></td>
                        <td><div class="key action-keys" onclick = "operandkeyClickHandler()">%</div></td>
                        <td><div class="key operand" onclick = "operandkeyClickHandler('DIVIDE')">&#x00F7</div></td>
                    </tr>
                    <tr>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(7)">7</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(8)">8</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(9)">9</div></td>
                        <td><div class="key operand" onclick = "operandkeyClickHandler('MULTIPLY')">x</div></td>
                    </tr>
                    <tr>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(4)">4</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(5)">5</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(6)">6</div></td>
                        <td><div class="key operand" onclick = "operandkeyClickHandler('SUBTRACT')">-</div></td>
                    </tr>
                    <tr>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(1)">1</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(2)">2</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(3)">3</div></td>
                        <td><div class="key operand" onclick = "operandkeyClickHandler('ADD')">+</div></td>
                    </tr>
                    <tr>
                        <td><div class="key num-keys" onclick = "undoClickHandler()"><i class="fa fa-undo"></i></div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler(0)">0</div></td>
                        <td><div class="key num-keys" onclick = "numkeyClickHandler('.')">.</div></td>
                        <td><div class="key action-keys" onclick = "resultClickHandler()">=</div></td>
                    </tr>
                </tbody>
                
            </table>

        </div>

    </div>
    
</body>
</html>
