<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Diapositiva 7 — Auditoría y Selección por Serie</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
<style>
  :root{
    --vinfer-cyan: #00A9A5; 
    --vinfer-blue: #005088;
    --navy:#1B2A54; --teal:#0F766E; --tealbg:#E6F3EF; --ink:#22283A; --muted:#7A8299; --line:#E7EAF1;
    --green:#2E7D6B; --greenbg:#E6F3EF; --red:#C0392B; --redbg:#FCEAE8; --amber:#B08900; --amberbg:#FBF3DC;
  }
  *{box-sizing:border-box;}
  body{margin:0;font-family:'Segoe UI',Roboto,Arial,sans-serif;background:#fff;color:var(--ink);}
  .wrap{max-width:1100px;margin:0 auto;padding:20px 20px 30px;}

  .tabs{display:flex;gap:10px;justify-content:center;margin-bottom:14px;flex-wrap:wrap;}
  .tab{border:2px solid var(--line);background:#fff;padding:8px 16px;border-radius:10px;cursor:pointer;
    font-size:14px;font-weight:700;color:var(--muted);transition: all 0.2s;}
  .tab.active{color:#fff;}

  .headline{text-align:center;border-radius:14px;padding:14px 18px;margin-bottom:14px;
    font-size:17px;font-weight:800;line-height:1.4;}
  .headline .small{display:block;font-size:12.5px;font-weight:600;opacity:.85;margin-top:3px;}

  .chartbox{border:1px solid var(--line);border-radius:12px;padding:10px 14px 4px;margin-bottom:12px;background:#fafafa;}
  canvas{max-height:260px;}

  .marklegend{display:flex;justify-content:center;gap:20px;flex-wrap:wrap;font-size:12.5px;font-weight:700;margin:6px 0 2px;}
  .marklegend span{display:inline-flex;align-items:center;gap:5px;}
  .dot{width:9px;height:9px;border-radius:50%;display:inline-block;}

  .totals{display:flex;gap:12px;justify-content:center;margin-top:14px;flex-wrap:wrap;}
  .tcard{border-radius:12px;padding:12px 18px;text-align:center;min
