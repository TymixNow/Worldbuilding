
#<%tp.date.now("[date/]gg[/]ww")%>
#<%tp.date.now("[day-of-week/]ddd")%>
Daily note of: <%tp.date.now("DD MMM YYYY [(]wo dddd [of the year)]")%>

# Note from a month earlier:
![[<%tp.date.now("DD.MM.YYYY","P-30D")%>#body ]]

# Note from a week earlier:
![[<%tp.date.now("DD.MM.YYYY","P-7D")%>#body ]]
 << [[<%tp.date.now("DD.MM.YYYY",-1)%>]] prev - next [[<%tp.date.now("DD.MM.YYYY",1)%>]] >>
# Quote

<% tp.web.daily_quote() %>
# Body

