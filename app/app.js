const express = require('express'),
    app = express();

app.get('*', (req, res) => {
    res.send('Node example app');
});

const PORT = 8080;
app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}`);
});