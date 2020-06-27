var pico8_gpio = new Array(128);

function put_string(string) {
	for (let i = 0; i < string.length; i++)
	{
		pico8_gpio[i] = string.charCodeAt(i);
	}
}
