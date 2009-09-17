<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%}</h2>
<div class="top-menu">
% pagenav '&larr;' '&rarr;' '::'
|
% pagelist
</div>
<img src="%{echo -n $base_path'/_werc/pages/'$name'/'`{basename $req_path}%}.png"></a><br>
<a href="%{ls -p $pages_file%}">%{ls -p $pages_file%}</a>
