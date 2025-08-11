#<%tp.date.now("[date/]YY[/]MM")%>
Weekly note of: <%tp.date.now("DD MMM YYYY [(]wo dddd [of the year)]")%>

# Note from a year earlier:
![[<%tp.date.now("DD.MM.YYYY",-1Y)%>]]
 <- [[<%tp.date.now("GG/WW",-7)%>]] prev - next [[<%tp.date.now("GG/WW",7%>]] ->
# Quote

<% tp.web.daily_quote() %>
# Body

## Todo:
<%*
async function findTodoCursor() {
    const files = tp.app.vault.getMarkdownFiles();
    const excludedFolders = ["Templates/", "IRL/Daily Ideas/"];

    const results = await Promise.all(
        files.map(async (file) => {
            if (excludedFolders.some(folder => file.path.startsWith(folder))) {
                return null;
            }

            const content = await tp.app.vault.cachedRead(file);
            if (content.includes("#todo/cursor")) {
                const fileName = file.path.split("/").pop().replace(/\.md$/, ""); // Get filename without extension
                return `[[${file.path}|${fileName}]]`;
            }
            return null;
        })
    );

    return results.filter(Boolean).join("\n");
}
%>
<%
findTodoCursor()
%>
## Done: