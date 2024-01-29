function normalize_vector(x, y) {
	var normalized_vector = { x: 0, y: 0 };

	var len = sqrt(x * x + y * y);

	if (len != 0) {
		normalized_vector.x = x / len;
		normalized_vector.y = y / len;
	}

	return normalized_vector
}