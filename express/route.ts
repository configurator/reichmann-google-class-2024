import { Client } from 'pg';

export const helloWorldHandler = async (req, res) => {
	try {
		const client = new Client({
			host: 'db',
			port: 5432,
			user: 'postgres',
			password: 'password',
		});
		await client.connect();

		const result = await client.query('SELECT $1::text as message', ['Hello world!']);
		res.json(result);
		await client.end();
	} catch (e) {
		res.json({ error: e.message });
	}
};
