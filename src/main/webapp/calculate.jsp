<html>
<head>
<style>
        :root {
                   --primary-color: #6366f1;
                   --success-color: #22c55e;
                   --danger-color: #ef4444;
                   --bg-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
               }

               body {
                   margin: 0;
                   height: 100vh;
                   display: flex;
                   justify-content: center;
                   align-items: center;
                   font-family: 'Inter', system-ui, -apple-system, sans-serif;
                   background: var(--bg-gradient); /* Modern purple/blue gradient */
                   overflow: hidden;
               }

               .result-card {
                   width: 380px;
                   padding: 40px;
                   text-align: center;
                   /* Glassmorphism Effect */
                   background: rgba(255, 255, 255, 0.95);
                   backdrop-filter: blur(10px);
                   border-radius: 24px;
                   box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);

                   /* Entry Animation */
                   animation: slideUp 0.6s cubic-bezier(0.16, 1, 0.3, 1);
               }

               @keyframes slideUp {
                   from { opacity: 0; transform: translateY(30px); }
                   to { opacity: 1; transform: translateY(0); }
               }

               h2 {
                   color: #1f2937;
                   font-size: 1.5rem;
                   margin-bottom: 8px;
                   letter-spacing: -0.5px;
               }

               p { color: #6b7280; margin-bottom: 24px; }

               .value-container {
                   background: #f3f4f6;
                   padding: 24px;
                   border-radius: 16px;
                   margin: 20px 0;
                   transition: transform 0.3s ease;
               }

               .value-container:hover {
                   transform: scale(1.03);
               }

               .value {
                   /* Ternary logic for dynamic color (Positive vs Negative) */
                   color: ${result >= 0 ? 'var(--success-color)' : 'var(--danger-color)'};
                   font-weight: 800;
                   font-size: 3rem;
                   display: block;
               }

               .back-btn {
                   display: inline-flex;
                   align-items: center;
                   justify-content: center;
                   margin-top: 24px;
                   padding: 12px 0px;
                   text-decoration: none;
                   color: white;
                   background: #1f2937;
                   border-radius: 12px;
                   font-weight: 600;
                   width: 100%;
                   transition: all 0.2s ease;
               }

               .back-btn:hover {
                   background: #374151;
                   transform: translateY(-2px);
                   box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
               }

               .back-btn svg { margin-right: 6px; }
        .back-btn:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="result-card">
    <h2>Calculation Result</h2>
    <hr>
    <p>The sum of the numbers is:</p>
    <div class="value">${result}</div>

    <a href="/" class="back-btn">Back to Calculator</a>
</div>

</body>
</html>