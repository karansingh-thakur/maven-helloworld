<h5> Hello, This is a test deployement using cicd pipeline and hosted on apache tomcat!!! </h5>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .calc-container {
            background: #21252c;
            height: 72%;
            width: 24%;
            min-width: 280px;
            min-height: 540px;
            border-radius: 15px;
            overflow: hidden;
        }

        .display {
            height: 40%;
            /* background-color: aqua; */
        }

        .switch-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 16px;
        }

        .switch {
            padding: 12px;
            border-radius: 16px;
            background: #21333d;
        }

        .color {
            color: #b4a4a5;
        }

        .icon-size {
            font-size: 8px;
            padding: 4px;
        }

        .output {
            color: #b4a5a5;
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            justify-content: flex-end;
            height: 80%;
            margin-right: 16px;
            margin-bottom: 30px;
        }

        .result {
            font-size: 7vh;
        }

        .operand {
            color: #e77474;
        }

        .operation {
            font-size: 28px;
        }

        .keypad-container {
            height: 60%;
            background-color: #333333;
            border-top-left-radius: 24px;
            border-top-right-radius: 24px;
            margin-top: 10px;
            padding: 16px;

        }

        .keypad {
            width: 100%;
            color: #ffffff;
            height: 100%;
            /* border-spacing: 16px; */
        }

        td {
            /* width: 40px;
        height: 40px;
        text-align: center; */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        tr {
            width: 100%;
            display: flex;
            justify-content: space-around;
            padding: 2px;
        }

        .key {
            width: 48px;
            height: 48px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #21252c;
            border-radius: 8px;
            font-size: 20px;
            font-weight: 800;
            cursor: pointer;
            border-spacing: 10px;
        }

        .action-keys {
            color: #00adb5;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Calculator</title>
    <script>class Calculator {
            constructor() {
                this.numOne = ""
                this.numTwo = ""
                // this.numArr = []
                // this.currentNum = ""
                this.result = ""
                this.operation = ""
                this.prevResult = ""
            }
            add() {
                this.result = Number(this.numOne) + Number(this.numTwo)
            }
            subtract() {
                this.result = Number(this.numOne) - Number(this.numTwo)
            }
            multiply() {
                this.result = this.numOne * this.numTwo
            }
            divide() {
                this.result = this.numOne / this.numTwo
            }
            modulo() {
                this.result = this.numOne % this.numTwo
            }
            setNumOne(value) {
                this.numOne += value
            }
            setNumTwo(value) {
                this.numTwo += value
            }
            setOperation(operation) {
                this.operation = operation
            }
            clearCalculator() { //reset original condition
                this.numOne = ""
                this.numTwo = ""
                this.result = ""
                this.operation = ""
                this.prevResult = ""
            }
            changeSign(forNumOne) {
                if (forNumOne) {
                    this.numOne = String(Number(this.numOne) * -1)
                    return
                }
                this.numTwo = String(Number(this.numTwo) * -1)
            }
            undo(forNumOne) {
                if (forNumOne) {
                    this.numOne = this.numOne.substring(0, (this.numOne.length - 1))
                }
                this.numTwo = this.numTwo.substring(0, (this.numTwo.length - 1))
            }
        }

        const signObject = {
            ADD: "+",
            SUBTRACT: "-",
            MULTIPLY: "x",
            DIVIDE: "&#x00F7",
            MODULO: "%"
        }

        const calculator = new Calculator()

        const updateMainDisplay = () => {
            const main = document.getElementById("main-display")
            main.innerText = calculator.operation ? (calculator.numTwo ? calculator.numTwo : 0) : (calculator.numOne || 0)
        }
        const updateSecondaryDisplay = () => {
            const secondary = document.getElementById("secondary-display")
            secondary.innerHTML = `${calculator.numOne} <span class="operand"> ${signObject[calculator.operation] ? signObject[calculator.operation] : ""} </span> ${calculator.numTwo}`
        }

        const numkeyClickHandler = (num) => {
            if (calculator.operation) {
                calculator.setNumTwo(num)
            } else {
                calculator.setNumOne(num)
            }

            updateMainDisplay()
            updateSecondaryDisplay()
            //console.log(num)
            //console.log(calculator)
        }
        const operandkeyClickHandler = (operation) => {
            //console.log(operation)
            calculator.setOperation(operation)
            updateMainDisplay()
            updateSecondaryDisplay()
        }

        const resultClickHandler = () => {
            switch (calculator.operation) {
                case "ADD":
                    calculator.add();
                    break;
                case "SUBTRACT":
                    calculator.subtract();
                    break;
                case "DIVIDE":
                    calculator.divide();
                    break;
                case "MULTIPLY":
                    calculator.multiply();
                    break;
                case "MODULO":
                    calculator.modulo();
                    break;
                default:
                    break;
            }
            const main = document.getElementById("main-display");
            main.innerText = calculator.result
        }


        const actionkeyClickHandler = (action) => {
            switch (action) {
                case "CLEAR-ALL":
                    calculator.clearCalculator()
                    break;
                case "CHANGE-SIGN":
                    calculator.changeSign(calculator.operation ? false : true)
                    break;

                default:
                    break;
            }
            updateMainDisplay()
            updateSecondaryDisplay()
        }
        const undoClickHandler = () => {
            calculator.undo(calculator.operation ? false : true)
            updateMainDisplay()
            updateSecondaryDisplay()
        }



    </script>
</head>

<body>
    <div class="calc-container">
        <div class="display">
            <div class="switch-container">
                <div class="switch">
                    <i class="fa fa-sun-o fa-lg color icon-size"></i>
                    <i class="fa fa-moon-o fa-lg color icon-size"></i>
                </div>
            </div>
            <div class="output">
                <label id="secondary-display" class="operation"> </label>
                <label id="main-display" class="result">0</label>

            </div>
        </div>
        <div class="keypad-container">
            <table class="keypad">
                <tbody>
                    <tr>
                        <td>
                            <div class="key action-keys" onclick="actionkeyClickHandler('CLEAR-ALL')">AC</div>
                        </td>
                        <td>
                            <div class="key action-keys" onclick="actionkeyClickHandler('CHANGE-SIGN')">+/-</div>
                        </td>
                        <td>
                            <div class="key action-keys" onclick="operandkeyClickHandler()">%</div>
                        </td>
                        <td>
                            <div class="key operand" onclick="operandkeyClickHandler('DIVIDE')">&#x00F7</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(7)">7</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(8)">8</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(9)">9</div>
                        </td>
                        <td>
                            <div class="key operand" onclick="operandkeyClickHandler('MULTIPLY')">x</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(4)">4</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(5)">5</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(6)">6</div>
                        </td>
                        <td>
                            <div class="key operand" onclick="operandkeyClickHandler('SUBTRACT')">-</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(1)">1</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(2)">2</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(3)">3</div>
                        </td>
                        <td>
                            <div class="key operand" onclick="operandkeyClickHandler('ADD')">+</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="key num-keys" onclick="undoClickHandler()"><i class="fa fa-undo"></i></div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler(0)">0</div>
                        </td>
                        <td>
                            <div class="key num-keys" onclick="numkeyClickHandler('.')">.</div>
                        </td>
                        <td>
                            <div class="key action-keys" onclick="resultClickHandler()">=</div>
                        </td>
                    </tr>
                </tbody>

            </table>

        </div>

    </div>

</body>

</html>
</body>
</html>
