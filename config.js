const apiKey = process.env.API_KEY;
if (!apiKey) {
    throw new Error('API_KEY is not defined in the environment variables.');
}
