<%@page language="java"  %>
<html>
<head>
<style>
        :root {
                   --glass: rgba(255, 255, 255, 0.2);
                   --glass-heavy: rgba(255, 255, 255, 0.95);
                   --accent: #6366f1;
                   --accent-hover: #4f46e5;
               }

               body {
                   margin: 0;
                   height: 100vh;
                   display: flex;
                   justify-content: center;
                   align-items: center;
                   font-family: 'Inter', system-ui, -apple-system, sans-serif;
                   background-image: url('https://images.unsplash.com/photo-1631511258193-252ab3da6b8b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNhbGN1bGF0b3J8ZW58MHx8MHx8fDA%3D');
                   background-size: cover;
                   background-position: center;
                   background-attachment: fixed;
                   overflow: hidden; /* Prevents 210vh scroll issues */
               }

               .container {
                   width: 360px;
                   padding: 40px;
                   background: var(--glass-heavy);
                   backdrop-filter: blur(12px);
                   -webkit-backdrop-filter: blur(12px);
                   border: 1px solid rgba(255, 255, 255, 0.3);
                   border-radius: 30px;
                   box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
                   animation: containerPop 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
               }

               @keyframes containerPop {
                   from { transform: scale(0.8); opacity: 0; }
                   to { transform: scale(1); opacity: 1; }
               }

               h2 {
                   margin: 0 0 25px 0;
                   text-align: center;
                   font-weight: 800;
                   color: #1f2937;
                   font-size: 1.8rem;
                   letter-spacing: -0.025em;
               }

               .form-group { margin-bottom: 20px; }

               label {
                   display: block;
                   margin-bottom: 8px;
                   font-size: 0.85rem;
                   font-weight: 600;
                   color: #4b5563;
                   text-transform: uppercase;
                   letter-spacing: 0.05em;
               }

               input[type="number"] {
                   width: 100%;
                   padding: 14px;
                   border: 2px solid #e5e7eb;
                   border-radius: 12px;
                   background: #f9fafb;
                   font-size: 1.1rem;
                   transition: all 0.3s ease;
                   box-sizing: border-box;
               }

               input[type="number"]:focus {
                   outline: none;
                   border-color: var(--accent);
                   box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.15);
                   background: #fff;
               }

               .button-grid {
                   display: grid;
                   grid-template-columns: repeat(2, 1fr);
                   gap: 12px;
                   margin-top: 30px;
               }

               button {
                   padding: 16px;
                   border: none;
                   border-radius: 14px;
                   font-weight: 700;
                   font-size: 1rem;
                   cursor: pointer;
                   transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
                   background: #1f2937;
                   color: white;
                   display: flex;
                   align-items: center;
                   justify-content: center;
               }

               button:hover {
                   transform: translateY(-3px);
                   box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.2);
                   filter: brightness(1.2);
               }

               button:active { transform: translateY(0); }

               /* Specific Colors for Operations */
               .addbtn { background: var(--accent); }
               .subbtn { background: #4b5563; }
               .mulbtn { background: #4b5563; }
               .divbtn { background: #111827; }
    </style>
</head>
<body>

<div class="container">
    <h2>Calculator</h2>
    <form action="" class="actionForm">
        <div class="form-group">
            <label for="number1">Number 1:</label>
            <input type="number" id="number1" name="num1" required>
        </div>
        <div class="form-group">
            <label for="number2">Number 2:</label>
            <input type="number" id="number2" name="num2" required>
        </div>
        <div style="display: flex; gap: 10px; flex-wrap: wrap; padding: 2px; margin: 4px;">
        <button type="button" class="addbtn" onClick="submitOperationChoice('add')">Add</button>
        <button type="button" class="subbtn" onClick="submitOperationChoice('sub')">Subtract</button>
        <button type="button" class="mulbtn" onClick="submitOperationChoice('mul')">Multiply</button>
        <button type="button" class="divbtn" onClick="submitOperationChoice('div')">Division</button>


        </div>

    </form>
</div>
<script>


function submitOperationChoice(operationType) {
        console.log("Submitting operation:", operationType);

  const form = document.querySelector('.actionForm');

 if(operationType==="add"){
 form.action = "/addition";
 }else if(operationType==="sub"){
 form.action = "/subtract";
 }else if(operationType==="mul"){
 form.action = "/multiply";
 }else{
 form.action = "/division";
 }
 form.submit();
}
</script>
</body>
</html>