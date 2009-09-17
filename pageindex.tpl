<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%}</h2>
<div class="top-menu">
% pagelist
</div>
% pagethumbs
<br>
<a href="%{ls -p $pages_file%}">%{ls -p $pages_file%}</a>
