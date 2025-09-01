app.listen(port, (err) => {
    if (err) {
        console.error('Server start error:', err);
    } else {
        console.log('Server running...');
    }
});
