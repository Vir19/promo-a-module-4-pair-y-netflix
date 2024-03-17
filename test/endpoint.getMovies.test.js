const request = require("supertest");
const { server } = require("../src/index.js");

describe("GET /movies", () => {
  test("Test returns a json", async () => {
    const res = await request(server).get("/movies");

    expect(Array.isArray(res.body.movies)).toBe(true);
    expect(res.headers["content-type"]).toMatch(/^application\/json/);
  });
});
