<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?php
$page_top_template = "
<html>
<head>
<title>Coan</title>
<meta name=\"generator\" content=\"Bluefish 1.0.7\">
<meta name=\"description\" content=\"Coan is a software engineering tool for
analysing preprocessor-based configurations of C or C++ source code.
Its principal use is to simplify a body of source code by eliminating parts that
are redundant with respect to a specified configuration. Dead code removal is an
application of this sort\">
<meta name=\"ROBOTS\" content=\"INDEX, NOFOLLOW\">
<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">
<meta http-equiv=\"content-type\" content=\"application/xhtml+xml; charset=UTF-8\">
<meta http-equiv=\"content-style-type\" content=\"text/css\">
<meta http-equiv=\"expires\" content=\"0\">
<link rel=\"stylesheet\" type=\"text/css\" href=\"coan.css\" />
</head>
<body>
<ul class=\"tabmenu\">
  <li><a id=\"home\" href=\"index.php\">Home</a></li>
  <li><a id=\"about\" href=\"index.php?page=about\">About Coan</a></li>
  <li><a id=\"download\" href=\"index.php?page=download\">Download</a></li>
  <li><a id=\"install\" href=\"index.php?page=install\">Install</a></li>
  <li><a id=\"docs\" href=\"index.php?page=docs\">Docs</a></li>
  <li><a id=\"test\" href=\"index.php?page=test\">Testing</a></li>
  <li><a id=\"contact\" href=\"index.php?page=contact\">Contact</a></li>
  <li><a id=\"acknowledge\" href=\"index.php?page=acknowledge\">Acknowledgements</a></li>
  <li><a id=\"todo\" href=\"index.php?page=todo\">To Do</a></li>
  <li><a id=\"changes\" href=\"index.php?page=changes\">Changelog</a></li>
  <li><a id=\"cv\" href=\"index.php?page=cv\">My CV</a></li>
  <!-- <li><a id=\"brief_cv\" href=\"index.php?page=brief_cv\">My Brief CV</a></li> -->
</ul>

<div class=\"content\">

<table><tr><td class=\"pagebody\">

<table class=\"banner\">
<tr><td class=\"logo\">Coan:</td><td class=\"strapline\">The C Preprocessor Chainsaw</td></tr>
</table>";

$picno = rand(0,14);
$page_bottom = "
<table class=\"footer\">
<tr>
<td>
 <a href=\"http://sourceforge.net/projects/coan2\"><img src=\"http://sflogo.sourceforge.net/sflogo.php?group_id=255333&amp;type=14\" width=\"150\" height=\"40\" alt=\"Get coan at SourceForge.net. Fast, secure and Free Open Source software downloads\" /></a>
</td>
<td>Copyright &copy 2010-2012 Michael Kinghan</td>
</tr>
</table>

</td> <!-- pagebody -->

<td class=\"adsbody\" style=\"background-image: url(./code_pics/code_pic-$picno.jpeg)\"></td>

</tr>
</table>

</div>
</body>
</html>
";


$page_selector = $_GET['page'];
if (!$page_selector) {
	$page_selector = 'home';
}
$page_top = str_replace("id=\"$page_selector\"","id=\"$page_selector\" class=\"active\"",$page_top_template);
if ($page_selector == 'cv') {
	$page_top =str_replace("<title>Coan</title>","<title>CV: Mike Kinghan, 2012</title>",$page_top);
	$page_top = str_replace("<body>","<body><div class=\"cv\">",$page_top);
	$page_top = str_replace("<td class=\"logo\">Coan:</td><td class=\"strapline\">The C Preprocessor Chainsaw</td>","<td class=\"logo\">CV:</td><td class=\"strapline\">Mike Kinghan</td>",$page_top);
  	$page_top = str_replace("<li><a id=\"about\" href=\"index.php?page=about\">About Coan</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"download\" href=\"index.php?page=download\">Download</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"install\" href=\"index.php?page=install\">Install</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"docs\" href=\"index.php?page=docs\">Docs</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"test\" href=\"index.php?page=test\">Testing</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"contact\" href=\"index.php?page=contact\">Contact</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"acknowledge\" href=\"index.php?page=acknowledge\">Acknowledgements</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"todo\" href=\"index.php?page=todo\">To Do</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"changes\" href=\"index.php?page=changes\">Changelog</a></li>","",$page_top);
	$page_bottom = str_replace("<td class=\"adsbody\" style=\"background-image: url(./code_pics/code_pic-$picno.jpeg)\"></td>","",$page_bottom);
	$page_bottom = str_replace("<a href=\"http://sourceforge.net/projects/coan2\"><img src=\"http://sflogo.sourceforge.net/sflogo.php?group_id=255333&amp;type=14\" width=\"150\" height=\"40\" alt=\"Get coan at SourceForge.net. Fast, secure and Free Open Source software downloads\" /></a>","",$page_bottom);

	$page_bottom = str_replace("</div>","</div></div>",$page_bottom);
}
if ($page_selector == 'replace_with_brief_cv') {
	$page_top =str_replace("<title>Coan</title>","<title>Brief CV: Mike Kinghan, 2012</title>",$page_top);
	$page_top = str_replace("<body>","<body><div class=\"cv\">",$page_top);
	$page_top = str_replace("<td class=\"logo\">Coan:</td><td class=\"strapline\">The C Preprocessor Chainsaw</td>","<td class=\"logo\">CV:</td><td class=\"strapline\">Mike Kinghan</td>",$page_top);
  	$page_top = str_replace("<li><a id=\"about\" href=\"index.php?page=about\">About Coan</a></li>","",$page_top);
    $page_top = str_replace("<li><a id=\"home\" href=\"index.php\">Home</a></li>","",$page_top);
    $page_top = str_replace("<li><a id=\"cv\" href=\"index.php?page=cv\">My CV</a></li>","",$page_top);
    $page_top = str_replace("<li><a id=\"brief_cv\" class=\"active\" href=\"index.php?page=brief_cv\">My Brief CV</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"download\" href=\"index.php?page=download\">Download</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"install\" href=\"index.php?page=install\">Install</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"docs\" href=\"index.php?page=docs\">Docs</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"test\" href=\"index.php?page=test\">Testing</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"contact\" href=\"index.php?page=contact\">Contact</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"acknowledge\" href=\"index.php?page=acknowledge\">Acknowledgements</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"todo\" href=\"index.php?page=todo\">To Do</a></li>","",$page_top);
	$page_top = str_replace("<li><a id=\"changes\" href=\"index.php?page=changes\">Changelog</a></li>","",$page_top);
	$page_bottom = str_replace("<td class=\"adsbody\" style=\"background-image: url(./code_pics/code_pic-$picno.jpeg)\"></td>","",$page_bottom);
	$page_bottom = str_replace("<a href=\"http://sourceforge.net/projects/coan2\"><img src=\"http://sflogo.sourceforge.net/sflogo.php?group_id=255333&amp;type=14\" width=\"150\" height=\"40\" alt=\"Get coan at SourceForge.net. Fast, secure and Free Open Source software downloads\" /></a>","",$page_bottom);

	$page_bottom = str_replace("</div>","</div></div>",$page_bottom);
}
echo $page_top;
include("$page_selector.php");
echo $page_bottom;  
?>
