<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%} (%($page_num%)/%($page_tot%))</h2>
<div class="top-menu" style="font-size:80%">
% pagelist | paginate $page_num 50 $page_tot '<a href=\"%d\">%s</a>\n'
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
