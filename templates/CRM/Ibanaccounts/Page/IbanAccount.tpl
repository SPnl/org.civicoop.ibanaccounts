<h2>{ts}IBAN Accounts{/ts}</h2>

<div class="action-link">
    {assign var='add_q' value='action=add&cid='|cat:$contactId}
    <a accesskey="N" href="{crmURL p='civicrm/contact/ibanaccount/add' q=$add_q h=0}" class="button">
        <span>
            <div class="icon add-icon"></div>
            {ts}Add IBAN Account{/ts}
        </span>
    </a>
</div>

<table>
    <tr>
        <th>{ts}IBAN{/ts}</th>
        <th>{ts}BIC{/ts}</th>
        <th></th>
    </tr>
    {foreach from=$accounts item=account}
        <tr>
            <td>{$account.iban_human}</td>
            <td>{$account.bic}</td>
            <td>
                {assign var='delete_q' value='action=delete&cid='|cat:$contactId|cat:'&iban='|cat:$account.iban}
                <a href="{crmURL p='civicrm/contact/ibanaccount/view' q=$delete_q h=0}" class="" onclick="return confirm('{ts}Are you sure?{/ts}');">{ts}Delete{/ts}</a>
            </td>
        </tr>
    {/foreach}
</table>