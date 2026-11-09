#!/usr/bin/env python3
"""Gera src/casa.html a partir de src/casa.template.html, embutindo as fontes de src/fonts/ (woff2) como data URI."""
import base64, pathlib
root = pathlib.Path(__file__).resolve().parent.parent
faces = [
    ("FDC Heros", "texgyreheros-regular", 400, "normal"),
    ("FDC Heros", "texgyreheros-bold", 700, "normal"),
    ("FDC Heros", "texgyreheros-bolditalic", 700, "italic"),
    ("FDC Heros Cn", "texgyreheroscn-bold", 700, "normal"),
    ("FDC Cursor", "texgyrecursor-regular", 400, "normal"),
]
css = "\n".join(
    f'@font-face{{font-family:"{fam}";src:url(data:font/woff2;base64,{base64.b64encode((root/"src/fonts"/f"{f}.woff2").read_bytes()).decode()}) format("woff2");font-weight:{w};font-style:{s};font-display:swap}}'
    for fam, f, w, s in faces)
tpl = (root/"src/casa.template.html").read_text()
(root/"src/casa.html").write_text(tpl.replace("/*@FONTS@*/", "/* TeX Gyre Heros / Cursor (equivalente livre da Helvetica, design system frandecampos) */\n" + css))
print("src/casa.html gerado")
