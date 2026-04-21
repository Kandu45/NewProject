<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

/* DARK MODERN UI */
:root{
    --bg:#020617;
    --primary:#e2e8f0;
    --accent:#38bdf8;
    --accent2:#6366f1;
    --card:rgba(255,255,255,0.06);
    --border:rgba(255,255,255,0.12);
    --muted:#94a3b8;
}

body{
    margin:0;
    font-family:Inter;
    background:radial-gradient(circle at top,#1e293b,#020617);
    color:var(--primary);
}

/* HEADER */
header{
    position:sticky;
    top:0;
    backdrop-filter:blur(10px);
    background:rgba(2,6,23,0.6);
    border-bottom:1px solid var(--border);
}

.container{
    max-width:1200px;
    margin:auto;
    padding:0 20px;
}

.header-inner{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:14px 0;
}

.brand{
    font-family:Poppins;
    font-size:22px;
    font-weight:700;
}

.brand span{
    color:var(--accent);
}

/* SEARCH */
.search{
    display:flex;
    background:var(--card);
    border:1px solid var(--border);
    border-radius:999px;
    padding:8px 12px;
}

.search input{
    background:transparent;
    border:0;
    color:white;
    outline:none;
}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
    background:linear-gradient(135deg,#020617,#1e293b);
}

.hero h1{
    font-size:48px;
    background:linear-gradient(90deg,#38bdf8,#6366f1);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* BUTTON */
.btn{
    padding:12px 20px;
    border-radius:999px;
    border:0;
    cursor:pointer;
    font-weight:600;
}

.btn-primary{
    background:linear-gradient(135deg,#38bdf8,#6366f1);
    color:white;
}

/* GRID */
.grid{
    display:grid;
    gap:20px;
}

.products{
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
}

/* CARD */
.card{
    background:var(--card);
    backdrop-filter:blur(12px);
    border:1px solid var(--border);
    border-radius:16px;
    padding:20px;
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

/* PRODUCT */
.product img{
    width:100%;
    height:180px;
    object-fit:cover;
    border-radius:12px;
}

/* FOOTER */
footer{
    text-align:center;
    padding:30px;
    color:var(--muted);
}

</style>
</head>

<body>

<header>
<div class="container header-inner">
<div class="brand">Nexus<span>Shop</span></div>

<div class="search">
<input type="text" id="searchInput" placeholder="Search products...">
<i class="fas fa-search"></i>
</div>

<div>
<i class="fas fa-shopping-cart"></i>
<span id="cartCount">0</span>
</div>
</div>
</header>

<section class="hero">
<h1>Next-Gen Shopping Experience</h1>
<p>Modern UI with premium feel</p>
<button class="btn btn-primary">Shop Now</button>
</section>

<section class="container" style="padding:50px 0;">
<h2>Trending Products</h2>
<div class="grid products" id="productsGrid"></div>
</section>

<footer>
© 2026 NexusShop
</footer>

<script>

const PRODUCTS=[
{ id:1,title:"iPhone 14 Pro",price:1099,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"},
{ id:2,title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"},
{ id:3,title:"Headphones",price:399,img:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80"}
];

let cart=0;

function render(){
const grid=document.getElementById("productsGrid");
grid.innerHTML="";

PRODUCTS.forEach(p=>{
const el=document.createElement("div");
el.className="card product";

el.innerHTML=`
<img src="${p.img}">
<h3>${p.title}</h3>
<div>$${p.price}</div>
<button class="btn btn-primary">Add</button>
`;

el.querySelector("button").onclick=()=>{
cart++;
document.getElementById("cartCount").innerText=cart;
};

grid.appendChild(el);
});
}

render();

</script>

</body>
</html>
