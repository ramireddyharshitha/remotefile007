<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SSP Tirupati </title>
  <meta name="description" content="Perseverance Software Institute — Courses, schedules, mentors, and admissions. Learn DevOps, Cloud, AI, and Full‑Stack with hands‑on projects." />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg:#0e0f14;      /* page backgroun*/
      --panel:#141723;   /* elevated background */
      --muted:#9aa3b2;   /* secondary text */
      --text:#ffffff;    /* primary text */
      --primary:#00BFFF; /* Deep Sky Blue */
      --accent:#FFD700;  /* Golden Yellow */
      --success:#2ecc71;
      --danger:#ff5c5c;
      --ring: rgba(0,191,255,.35);
      --radius: 18px;
      --shadow: 0 10px 30px rgba(0,0,0,.35), inset 0 1px 0 rgba(255,255,255,.04);
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0; font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif;
      background: radial-gradient(1200px 600px at 80% -10%, rgba(0,191,255,.08), transparent 60%),
                  radial-gradient(900px 500px at -10% -10%, rgba(255,215,0,.06), transparent 60%),
                  var(--bg);
      color:var(--text);
    }
    a{color:inherit; text-decoration:none}
    .container{width:min(1200px, 92%); margin-inline:auto}

    /* Header */
    header{
      position:sticky; top:0; z-index:50; backdrop-filter:saturate(1.2) blur(8px);
      background:linear-gradient(180deg, rgba(14,15,20,.9), rgba(14,15,20,.4));
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    .nav{
      display:flex; align-items:center; justify-content:space-between; padding:14px 0;
    }
    .brand{display:flex; align-items:center; gap:12px}
    .logo{
      width:38px; height:38px; border-radius:12px; background:
      conic-gradient(from 210deg, var(--primary), var(--accent));
      box-shadow:0 8px 20px rgba(0,191,255,.3);
    }
    .brand h1{font:700 18px/1 Montserrat, sans-serif; letter-spacing:.6px; margin:0}
    nav ul{display:flex; gap:18px; list-style:none; margin:0; padding:0}
    nav a{padding:10px 12px; border-radius:10px; color:var(--muted)}
    nav a:hover{background:rgba(255,255,255,.06); color:var(--text)}
    .cta{display:flex; gap:10px}
    .btn{display:inline-flex; align-items:center; gap:10px; padding:10px 14px; border-radius:12px; font-weight:600; border:1px solid transparent; cursor:pointer}
    .btn-primary{background:linear-gradient(90deg, var(--primary), #3fd0ff); color:#0b1220; border-color:rgba(255,255,255,.08)}
    .btn-ghost{background:transparent; border-color:rgba(255,255,255,.14); color:var(--text)}
    .btn:focus{outline:3px solid var(--ring); outline-offset:2px}
    .mobile-toggle{display:none}

    /* Hero */
    .hero{position:relative; padding:72px 0 46px}
    .hero-grid{display:grid; grid-template-columns: 1.2fr 1fr; gap:32px; align-items:center}
    .badge{display:inline-flex; align-items:center; gap:8px; padding:6px 10px; border-radius:999px; border:1px solid rgba(255,255,255,.12); color:var(--muted); font-size:12px}
    .hero h2{font:700 44px/1.1 Montserrat, sans-serif; margin:16px 0 12px; letter-spacing:.4px}
    .hero p{color:var(--muted); font-size:16px; margin:0 0 22px}
    .hero-card{background:linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.02)); border:1px solid rgba(255,255,255,.12); padding:18px; border-radius:var(--radius); box-shadow:var(--shadow)}
    .hero-stats{display:grid; grid-template-columns:repeat(3,1fr); gap:14px; margin-top:14px}
    .stat{background:var(--panel); border:1px solid rgba(255,255,255,.06); border-radius:14px; padding:12px; text-align:center}
    .stat .num{font:700 20px/1 Montserrat, sans-serif; color:var(--accent)}
    .hero-illustration{aspect-ratio:4/3; border-radius:20px; border:1px solid rgba(255,255,255,.1); background:
      radial-gradient(600px 200px at 20% 20%, rgba(0,191,255,.16), transparent 70%),
      radial-gradient(500px 200px at 80% 80%, rgba(255,215,0,.14), transparent 60%),
      linear-gradient(180deg, #141723, #0e0f14);
      display:grid; place-items:center; box-shadow:var(--shadow)
    }
    .hero-illustration svg{width:78%; max-width:520px}

    /* Sections */
    section{padding:54px 0}
    .section-head{display:flex; align-items:end; justify-content:space-between; gap:16px; margin-bottom:20px}
    .section-head h3{font:700 26px/1.2 Montserrat, sans-serif; margin:0}
    .section-head p{color:var(--muted); margin:0}

    /* Courses */
    .toolbar{display:flex; gap:10px; flex-wrap:wrap}
    .input{background:var(--panel); border:1px solid rgba(255,255,255,.12); color:var(--text); padding:10px 12px; border-radius:12px; min-width:240px}
    .grid{display:grid; grid-template-columns:repeat(3, 1fr); gap:16px}
    .card{background:linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.02)); border:1px solid rgba(255,255,255,.12); border-radius:var(--radius); padding:16px; box-shadow:var(--shadow)}
    .card h4{margin:0 0 8px; font:600 18px/1.2 Montserrat, sans-serif}
    .chip{display:inline-block; padding:6px 10px; border-radius:999px; background:rgba(0,191,255,.12); color:#a7e7ff; border:1px solid rgba(0,191,255,.25); font-size:12px; margin-right:6px}
    .meta{color:var(--muted); font-size:13px}

    /* Schedule */
    .table{width:100%; border-collapse:separate; border-spacing:0; overflow:hidden; border-radius:14px; border:1px solid rgba(255,255,255,.12)}
    .table th, .table td{padding:12px 14px; text-align:left}
    .table thead th{background:rgba(255,255,255,.06); font-weight:600}
    .table tbody tr{border-top:1px solid rgba(255,255,255,.06)}

    /* Mentors */
    .mentor{display:flex; gap:14px; align-items:center}
    .avatar{width:54px; height:54px; border-radius:50%; background:linear-gradient(180deg, #2a2f42, #171b29); border:1px solid rgba(255,255,255,.1); display:grid; place-items:center; font-weight:700}

    /* Testimonials */
    .testi{background:linear-gradient(180deg, rgba(0,191,255,.08), rgba(255,215,0,.06)); border:1px solid rgba(255,255,255,.12); padding:16px; border-radius:16px}

    /* FAQ */
    .faq-item{border:1px solid rgba(255,255,255,.12); border-radius:14px; margin-bottom:10px; overflow:hidden}
    .faq-q{width:100%; text-align:left; background:var(--panel); color:var(--text); padding:14px; border:none; font-weight:600; cursor:pointer}
    .faq-a{display:none; padding:14px; color:var(--muted); background:rgba(255,255,255,.04)}

    /* Contact */
    form{display:grid; grid-template-columns:1fr 1fr; gap:12px}
    form .full{grid-column:1 / -1}
    label{font-size:13px; color:var(--muted)}
    input, textarea, select{width:100%; padding:10px 12px; border-radius:12px; border:1px solid rgba(255,255,255,.14); background:var(--panel); color:var(--text)}
    textarea{min-height:110px; resize:vertical}

    /* Footer */
    footer{padding:30px 0; border-top:1px solid rgba(255,255,255,.08); color:var(--muted)}

    /* Responsive */
    @media (max-width: 980px){
      .hero-grid{grid-template-columns:1fr}
      .grid{grid-template-columns:1fr 1fr}
      nav ul{display:none}
      .mobile-toggle{display:inline-flex}
      .nav.open ul{display:flex; position:absolute; top:56px; right:4%; background:var(--panel); border:1px solid rgba(255,255,255,.12); border-radius:14px; padding:10px; flex-direction:column; width:240px}
      .nav.open ul a{padding:10px}
    }
    @media (max-width: 640px){
      .grid{grid-template-columns:1fr}
      form{grid-template-columns:1fr}
      .hero h2{font-size:34px}
    }
  </style>
</head>
<body>
  <!-- Header -->
  <header>
    <div class="container nav" id="nav">
      <div class="brand">

        <h1>SSP Tirupati</h1>
      </div>
      <nav aria-label="Primary">
        <ul>
          <li><a href="#courses">Courses</a></li>
          <li><a href="#schedule">Schedule</a></li>
          <li><a href="#mentors">Mentors</a></li>
          <li><a href="#testimonials">Testimonials</a></li>
          <li><a href="#faq">FAQ</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
      <div class="cta">
        <a class="btn btn-ghost" href="tel:+91-9876543210" aria-label="Call us">Call</a>
        <a class="btn btn-primary" href="#contact">Apply Now</a>
        <button class="btn btn-ghost mobile-toggle" aria-label="Toggle menu" onclick="document.getElementById('nav').classList.toggle('open')">☰</button>
      </div>
    </div>
  </header>

  <!-- Hero -->
  <section class="hero">
    <div class="container hero-grid">
      <div>
        <span class="badge">Trusted by Many learners • Job‑ready curriculum</span>
        <h2>Launch  your career with SSP Tirupati <span style="color:var(--accent)">Cloud, DevOps & AI</span></h2>
        <p>Outcomeoriented training with real projects, interview preparation, and mentorship. Learn by doing, ship your work, and get industry‑ready.</p>
        <div class="hero-card">
          <strong>Upcoming Cohorts</strong>
          <div class="hero-stats">
            <div class="stat"><div class="num">DevOps</div><div class="meta">Mon–Fri • 7PM IST</div></div>
            <div class="stat"><div class="num">Cloud</div><div class="meta">Sat–Sun • 10AM IST</div></div>
            <div class="stat"><div class="num">Full‑Stack</div><div class="meta">Tue–Thu • 8PM IST</div></div>
          </div>
        </div>
        <div style="margin-top:14px; display:flex; gap:10px; flex-wrap:wrap">
          <a class="btn btn-primary" href="#courses">Browse Courses</a>
          <a class="btn btn-ghost" href="https://wa.me/919876543210" target="_blank" rel="noopener">Chat on WhatsApp</a>
        </div>
      </div>
      <div class="hero-illustration" aria-hidden="true">
        <!-- Simple decorative SVG illustration -->
        <svg viewBox="0 0 600 400" xmlns="http://www.w3.org/2000/svg">
          <defs>
            <linearGradient id="g1" x1="0" y1="0" x2="1" y2="1">
              <stop offset="0%" stop-color="#00BFFF" stop-opacity="0.9"/>
              <stop offset="100%" stop-color="#FFD700" stop-opacity="0.9"/>
            </linearGradient>
          </defs>
          <rect x="40" y="40" width="520" height="320" rx="20" fill="none" stroke="url(#g1)" stroke-width="3"/>
          <g fill="#00BFFF" opacity="0.9">
            <circle cx="120" cy="110" r="6"/>
            <circle cx="160" cy="110" r="6"/>
            <circle cx="200" cy="110" r="6"/>
          </g>
          <rect x="80" y="150" width="440" height="12" rx="6" fill="#00BFFF" opacity="0.6"/>
          <rect x="80" y="175" width="360" height="12" rx="6" fill="#FFD700" opacity="0.7"/>
          <rect x="80" y="200" width="410" height="12" rx="6" fill="#00BFFF" opacity="0.6"/>
          <rect x="80" y="225" width="260" height="12" rx="6" fill="#FFD700" opacity="0.7"/>
          <rect x="80" y="250" width="320" height="12" rx="6" fill="#00BFFF" opacity="0.6"/>
        </svg>
      </div>
    </div>
  </section>

  <!-- Courses -->
  <section id="courses">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>Popular Courses</h3>
          <p>Industry‑aligned curriculum with hands‑on labs and career support.</p>
        </div>
        <div class="toolbar" role="search">
          <input id="courseSearch" class="input" type="search" placeholder="Search courses (e.g., DevOps, AWS, Java)" oninput="filterCourses()"/>
          <select id="courseLevel" class="input" onchange="filterCourses()">
            <option value="">All levels</option>
            <option>Beginner</option>
            <option>Intermediate</option>
            <option>Advanced</option>
          </select>
        </div>
      </div>
      <div class="grid" id="courseGrid" aria-live="polite">
        <article class="card course" data-tags="devops kubernetes docker aws" data-level="Intermediate">
          <h4>DevOps Engineer</h4>
          <p class="meta">CI/CD • Docker • Kubernetes • Terraform • AWS</p>
          <div style="margin-top:8px">
            <span class="chip">12 weeks</span>
            <span class="chip">Placement Prep</span>
          </div>
        </article>
        <article class="card course" data-tags="aws cloud terraform" data-level="Beginner">
          <h4>AWS Cloud Foundations</h4>
          <p class="meta">EC2 • S3 • VPC • IAM • Terraform</p>
          <div style="margin-top:8px">
            <span class="chip">8 weeks</span>
            <span class="chip">Project‑based</span>
          </div>
        </article>
        <article class="card course" data-tags="java spring boot maven" data-level="Intermediate">
          <h4>Java Full‑Stack</h4>
          <p class="meta">Spring Boot • REST • Maven • React</p>
          <div style="margin-top:8px">
            <span class="chip">14 weeks</span>
            <span class="chip">Capstone</span>
          </div>
        </article>
        <article class="card course" data-tags="python ml ai nlp" data-level="Beginner">
          <h4>Python + AI Fundamentals</h4>
          <p class="meta">Python • Pandas • Basics of ML & NLP</p>
          <div style="margin-top:8px">
            <span class="chip">10 weeks</span>
            <span class="chip">Hands‑on</span>
          </div>
        </article>
        <article class="card course" data-tags="jenkins cicd tomcat maven" data-level="Intermediate">
          <h4>CI/CD with Jenkins</h4>
          <p class="meta">Pipelines • Maven • Tomcat • Docker</p>
          <div style="margin-top:8px">
            <span class="chip">6 weeks</span>
            <span class="chip">Mini‑projects</span>
          </div>
        </article>
        <article class="card course" data-tags="html css js react" data-level="Beginner">
          <h4>Frontend Basics</h4>
          <p class="meta">HTML • CSS • JavaScript • React Basics</p>
          <div style="margin-top:8px">
            <span class="chip">6 weeks</span>
            <span class="chip">Portfolio</span>
          </div>
        </article>
      </div>
    </div>
  </section>

  <!-- Schedule -->
  <section id="schedule">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>Weekly Schedule</h3>
          <p>Flexible batches — weekdays & weekends (IST).</p>
        </div>
        <div class="toolbar">
          <select class="input" id="batchSelect" onchange="filterSchedule()">
            <option value="">All tracks</option>
            <option value="DevOps">DevOps</option>
            <option value="Cloud">Cloud</option>
            <option value="Full‑Stack">Full‑Stack</option>
          </select>
        </div>
      </div>
      <div style="overflow:auto">
        <table class="table" id="scheduleTable">
          <thead>
            <tr>
              <th>Track</th><th>Day</th><th>Time (IST)</th><th>Module</th><th>Mode</th>
            </tr>
          </thead>
          <tbody>
            <tr data-track="DevOps"><td>DevOps</td><td>Mon, Wed, Fri</td><td>7:00–8:30 PM</td><td>CI/CD + Docker</td><td>Online (Zoom)</td></tr>
            <tr data-track="Cloud"><td>Cloud</td><td>Sat & Sun</td><td>10:00–11:30 AM</td><td>AWS Foundations</td><td>Online (Zoom)</td></tr>
            <tr data-track="Full‑Stack"><td>Full‑Stack</td><td>Tue & Thu</td><td>8:00–9:30 PM</td><td>Spring Boot APIs</td><td>Online (Zoom)</td></tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <!-- Mentors -->
  <section id="mentors">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>Meet the Mentors</h3>
          <p>Engineers with real‑world experience at product companies.</p>
        </div>
      </div>
      <div class="grid">
        <div class="card mentor">
          <div class="avatar" aria-hidden="true">SS</div>
          <div>
            <h4>Shiva Sai Praveen</h4>
            <p class="meta">DevOps • Cloud • Infra Automation</p>
          </div>
        </div>
        <div class="card mentor">
          <div class="avatar" aria-hidden="true">RK</div>
          <div>
            <h4>Vignesh</h4>
            <p class="meta">Automation • Cloud • System Design</p>
          </div>
        </div>
        <div class="card mentor">
          <div class="avatar" aria-hidden="true">AN</div>
          <div>
            <h4>Neeraja </h4>
            <p class="meta">AWS • Kubernetes • Security</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section id="testimonials">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>Learner Stories</h3>
          <p>Our alumni crack roles at startups and MNCs.</p>
        </div>
      </div>
      <div class="grid">
        <div class="testi">
          <p>“The DevOps course was super hands‑on. The Jenkins + Docker pipeline I built became my portfolio highlight.”</p>
          <p class="meta"> DevOps Engineer @ FinTech</p>
        </div>
        <div class="testi">
          <p>“Clear explanations and practical labs. I deployed my first Spring Boot app to AWS within 3 weeks.”</p>
          <p class="meta">—  Java Developer</p>
        </div>
        <div class="testi">
          <p>“Mock interviews + resume support helped me switch from IT support to Cloud Engineer.”</p>
          <p class="meta">—  Cloud Engineer</p>
        </div>
      </div>
    </div>
  </section>

  <!-- FAQ -->
  <section id="faq">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>FAQ</h3>
          <p>Common questions about fees, batches, and support.</p>
        </div>
      </div>
      <div class="faq-item">
        <button class="faq-q" onclick="toggleFaq(this)">Do you provide recordings and notes?</button>
        <div class="faq-a">Yes. Session recordings, lab guides, and assignment solutions are shared after each class.</div>
      </div>
      <div class="faq-item">
        <button class="faq-q" onclick="toggleFaq(this)">Is there placement support?</button>
        <div class="faq-a">We conduct resume workshops, mock interviews, and referrals through our alumni network.</div>
      </div>
      <div class="faq-item">
        <button class="faq-q" onclick="toggleFaq(this)">What are the prerequisites?</button>
        <div class="faq-a">Basic computer literacy. For Cloud/DevOps, a free Azure/AWS account is recommended. We guide setup on day 1.</div>
      </div>
    </div>
  </section>

  <!-- Contact / Apply -->
  <section id="contact">
    <div class="container">
      <div class="section-head">
        <div>
          <h3>Apply / Contact</h3>
          <p>Have questions? Reach out and we’ll get back within 24 hours.</p>
        </div>
      </div>
      <div class="grid">
        <div class="card">
          <form onsubmit="submitForm(event)">
            <div class="full">
              <label for="name">Full Name</label>
              <input id="name" name="name" required placeholder="Your name" />
            </div>
            <div>
              <label for="email">Email</label>
              <input id="email" name="email" type="email" required placeholder="you@example.com" />
            </div>
            <div>
              <label for="phone">Phone</label>
              <input id="phone" name="phone" type="tel" required placeholder="+91‑" />
            </div>
            <div class="full">
              <label for="track">Interested Track</label>
              <select id="track" name="track">
                <option>DevOps</option>
                <option>Cloud</option>
                <option>Full‑Stack</option>
                <option>Python + AI</option>
              </select>
            </div>
            <div class="full">
              <label for="message">Message</label>
              <textarea id="message" name="message" placeholder="Tell us a bit about your goals"></textarea>
            </div>
            <div class="full" style="display:flex; gap:10px; align-items:center">
              <button class="btn btn-primary" type="submit">Submit Application</button>
              <a class="btn btn-ghost" href="mailto:admissions@perseverancesoftware.in">Email Us</a>
            </div>
            <p id="formStatus" class="meta" role="status" aria-live="polite" style="margin:8px 0 0"></p>
            <p class="meta" style="margin:6px 0 0">By submitting, you agree to our <a href="#">Terms</a> & <a href="#">Privacy</a>.</p>
          </form>
        </div>
        <div class="card">
          <h4>Visit / Reach Us</h4>
          <p class="meta">Tilak Road, Central Park, Tirupati, Andhra Pradesh 517501</p>
          <p class="meta">Phone: <a href="tel:+919876543210">+91 98765 43210</a></p>
          <p class="meta">WhatsApp: <a href="https://wa.me/919876543210" target="_blank" rel="noopener">Chat</a></p>
          <div style="height:220px; border-radius:14px; overflow:hidden; border:1px solid rgba(255,255,255,.12); background:#0b0f18; display:grid; place-items:center; color:var(--muted)">
            Map placeholder
          </div>
          <p class="meta" style="margin-top:10px">Add a live Google Map by replacing this placeholder with an <code>&lt;iframe&gt;</code> embed.</p>
        </div>
      </div>
    </div>
  </section>

  <footer>
    <div class="container" style="display:flex; justify-content:space-between; gap:14px; flex-wrap:wrap">
      <div>© <span id="year"></span> V7 Perseverance Software. All rights reserved.</div>
      <div>Built with ❤️ for learners • <a href="#faq">FAQ</a></div>
    </div>
  </footer>

  <script>
    // dynamic year
    document.getElementById('year').textContent = new Date().getFullYear();

    // course search + level filter
    function filterCourses(){
      const q = (document.getElementById('courseSearch').value || '').toLowerCase();
      const level = (document.getElementById('courseLevel').value || '').toLowerCase();
      const cards = document.querySelectorAll('#courseGrid .course');
      cards.forEach(c => {
        const tags = (c.dataset.tags || '').toLowerCase();
        const lev = (c.dataset.level || '').toLowerCase();
        const matchQ = !q || tags.includes(q) || c.textContent.toLowerCase().includes(q);
        const matchL = !level || lev === level;
        c.style.display = (matchQ && matchL) ? '' : 'none';
      });
    }

    // schedule filter
    function filterSchedule(){
      const track = document.getElementById('batchSelect').value;
      document.querySelectorAll('#scheduleTable tbody tr').forEach(r => {
        r.style.display = !track || r.dataset.track === track ? '' : 'none';
      });
    }

    // FAQ toggle
    function toggleFaq(btn){
      const p = btn.parentElement; const a = p.querySelector('.faq-a');
      const open = a.style.display === 'block';
      document.querySelectorAll('.faq-a').forEach(el => el.style.display = 'none');
      a.style.display = open ? 'none' : 'block';
    }

    // fake form submit (static only)
    function submitForm(e){
      e.preventDefault();
      const status = document.getElementById('formStatus');
      status.textContent = 'Submitting…';
      setTimeout(()=>{
        status.textContent = 'Thanks! Your application has been received. We\'ll contact you soon.';
      }, 800);
    }
  </script>
</body>
</html>
