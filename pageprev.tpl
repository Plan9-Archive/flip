<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%}</h2>
<div class="top-menu" style="font-size:80%">
% pagelist
</div>
<div style="text-align:right">
<a href="../%{echo -n `{ls -p $pages_file}%}">%{echo -n `{ls -p $pages_file}%}</a>
</div>
<div>
% pagenav '&larr;' '&rarr;' '::'
</div>
<img src="%{echo -n $base_path'/_werc/pages/'$name'/'`{basename $req_path}%}.png">
<div style="text-align:right">
% pagenav '&larr;' '&rarr;' '::'
</div>
