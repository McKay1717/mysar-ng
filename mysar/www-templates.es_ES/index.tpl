<nobr>[
<a href="{$pageVars.uri}">Atualizar esta p&aacute;gina</a>
]</nobr>

      <div class="table-responsive"><table class="table table-condensed"><tr><th style="font-size: 20px";>Relat&oacute;rio de Acesso por dia</th></tr></table></div>
      <p>
      [
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.OrderMethod}&OrderBy={$pageVars.OrderBy}&ByteUnit={$pageVars.ByteUnit}">
          Manter esta visualiza&ccedil;&atilde;o como padr&atilde;o
        </a>
      ]
      <br>
      <table cellpadding=1 cellspacing=1>
        <tr>
          <th rowspan="2">
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateASC}"><img border="{$pageVars.dateASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.dateLabelStart}DATA{$pageVars.dateLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateDESC}"><img border="{$pageVars.dateDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersASC}"><img border="{$pageVars.usersASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.usersLabelStart}USU&Aacute;RIOS{$pageVars.usersLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersDESC}"><img border="{$pageVars.usersDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsASC}"><img border="{$pageVars.hostsASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.hostsLabelStart}ESTA&Ccedil;&Otilde;ES{$pageVars.hostsLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsDESC}"><img border="{$pageVars.hostsDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesASC}"><img border="{$pageVars.sitesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.sitesLabelStart}SITES{$pageVars.sitesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesDESC}"><img border="{$pageVars.sitesDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th colspan="2">TR&Aacute;FEGO</th>
        </tr>
        <tr>
          <th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><img border="{$pageVars.bytesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><img border="{$pageVars.bytesDESCImageBorder}" src="images/down-arrow.gif"></a>
            <br>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.B}">{$pageVars.BLabelStart}B{$pageVars.BLabelEnd}</a>
            |
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.K}">{$pageVars.KLabelStart}K{$pageVars.KLabelEnd}</a>
            |
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.M}">{$pageVars.MLabelStart}M{$pageVars.MLabelEnd}</a>
            |
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.G}">{$pageVars.GLabelStart}G{$pageVars.GLabelEnd}</a>
          </th>
          <th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentASC}"><img border="{$pageVars.cachePercentASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.cachePercentLabelStart}USO DO CACHE{$pageVars.cachePercentLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentDESC}"><img border="{$pageVars.cachePercentDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
        </tr>
        {foreach from=$pageVars.availableDates item=date}
        <tr onMouseOver="this.bgColor='#C5D3E7';" onMouseOut="this.bgColor='#DAE3F0';">
          <td style="text-align: left;"><a href='{$smarty.server.PHP_SELF}?a=IPSummary&date={$date.date}'>{$date.dateFormatted}</a></td>
          <td style="text-align: center;">{$date.users}</font></td>
          <td style="text-align: center;">{$date.hosts}</font></td>
          <td style="text-align: center;"><a href="{$smarty.server.PHP_SELF}?a=allsites&date={$date.date}">{$date.sites}</a></font></td>
          <td style="text-align: right;">{$date.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
          <td style="text-align: center;">{$date.cachePercent}%</td>
        </tr>
      {/foreach}
      </table></div>
