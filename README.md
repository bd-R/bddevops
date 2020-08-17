
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bdtests

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![R build
status](https://github.com/bd-R/bdtests/workflows/R-CMD-check/badge.svg)](https://github.com/bd-R/bdtests/actions)
<!-- badges: end -->

The goal of bdtests is to facilitate package development, testing,
benchmarking and pre-release checklists - a ‘devtools like’ package for
bdverse packages development.  
  
:pencil: <span style="color: red;">**This is an initial draft, just a
basic skeleton and a place to store ideas**.</span> :pencil:

## Installation

bdtests is an in-house package; thus, no CRAN release is expected. You
can install bdtests from this repository with:

``` r
remotes::install_github("bd-R/bdtests")
```

## bdverse QA framework

bdtests is part of bdverse QA framework, for more details, see the QA
\[to add link\] section in the development guide.

## Package CI

<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}
</style>

</head>

<body>

<h2>

Package CI

</h2>

<div class="tab">

<button class="tablinks" onclick="openCity(event, 'Event Triggered')" id="defaultOpen">Event
Triggered</button>
<button class="tablinks" onclick="openCity(event, 'Scheduled')">Scheduled</button>

</div>

<div id="Event Triggered" class="tabcontent">

<span class="topright" onclick="this.parentElement.style.display=&#39;none&#39;"></span>
Compact mode Result (click “Generate” to refresh) Copy to clipboard
Preview

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-9wq8{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-yla0{font-weight:bold;text-align:left;vertical-align:middle}
.tg .tg-nrix{text-align:center;vertical-align:middle}
.tg .tg-g7sd{border-color:inherit;font-weight:bold;text-align:left;vertical-align:middle}
</style>

<table class="tg">

<thead>

<tr>

<th class="tg-yla0">

OS; r | \[Repository\]-\[Dependencies\]

</th>

<th class="tg-wa1i">

\[Master\]-\[Master\]

</th>

<th class="tg-wa1i">

\[Dev\]-\[Master\]

</th>

<th class="tg-wa1i">

\[Dev\]-\[Dev\]

</th>

</tr>

</thead>

<tbody>

<tr>

<td class="tg-yla0">

Mac-latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-g7sd">

Windows-latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-g7sd">

Ubuntu–latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-yla0">

Multi-CI

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Apull_request+event%3Apush" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

</tbody>

</table>

</div>

<div id="Scheduled" class="tabcontent">

<span class="topright" onclick="this.parentElement.style.display=&#39;none&#39;"></span>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-9wq8{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-yla0{font-weight:bold;text-align:left;vertical-align:middle}
.tg .tg-nrix{text-align:center;vertical-align:middle}
.tg .tg-g7sd{border-color:inherit;font-weight:bold;text-align:left;vertical-align:middle}
</style>

<table class="tg">

<thead>

<tr>

<th class="tg-yla0">

OS; r | \[Repository\]-\[Dependencies\]

</th>

<th class="tg-wa1i">

\[Master\]-\[Master\]

</th>

<th class="tg-wa1i">

\[Dev\]-\[Master\]

</th>

<th class="tg-wa1i">

\[Dev\]-\[Dev\]

</th>

</tr>

</thead>

<tbody>

<tr>

<td class="tg-yla0">

Mac-latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-g7sd">

Windows-latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-g7sd">

Ubuntu–latest; r-release

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-9wq8">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

<tr>

<td class="tg-yla0">

Multi-CI

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

<td class="tg-nrix">

<a href="https://github.com/sunn-e/bddummy/actions?query=workflow%3Amas-mas-ex+branch%3Amaster+event%3Aschedule" target="_blank"><img src="https://github.com/sunn-e/bddummy/workflows/mas-mas-ex/badge.svg?branch=master" alt="mas-mas-ex"><br></a>

</td>

</tr>

</tbody>

</table>

</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

</body>

</html>
