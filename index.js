import express from "express";
import fs from "fs";
import bodyParser from "body-parser";
import ExeQuery from "./connection/SqlFunctions.js";
const app = express();

app.use(express.json());
app.use(bodyParser.json());
// app.use(connection);

app.use((req, res, next) => {
  fs.appendFile(
    "./logs.txt",
    `${req.url} ------- ${new Date(Date.now())} \n`,
    (e) => {}
  );
  console.log(`${req.url}`);
  next();
});

app.get("/", async (req, res) => {
  try {
    let resData = await ExeQuery("SELECT * FROM user where id=2");


    console.log(resData);

    return res.json({
      success: true,
      data: resData,
    });
  } catch (error) {
    res.status(400).json({
      success: true,
      message: "Something Went Wrong !!",
    });
  }
});

app.listen(6000, () => {
  console.log("working");
});
