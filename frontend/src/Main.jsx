import React from "react";
import Box from "@mui/material/Box";
import Container from "@mui/material/Container";
import { Typography } from "@mui/material";
import DragDropFileUpload from "./components/DragDropFileUpload";
import ResultModal from "./components/ResultModal";
function Main() {
  const [open, setOpen] = React.useState(false);
  const [result, setResult] = React.useState(null);
  const handleOpen = () => setOpen(true);
  const handleClose = () => setOpen(false);

  const onFileUpload = (file) => {
    try {
      const formData = new FormData();
      formData.append("file", file);
      fetch("http://localhost:8000/predict", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.json())
        .then((result) => {
          handleOpen();
          setResult(result);
        });
    } catch (e) {
      console.log(e);
    }
  };

  return (
    <Container maxWidth="lg">
      <Box>
        <Typography variant="h1" component="h1" gutterBottom>
          Welcome to Predictor
        </Typography>
        <Typography variant="h3" component="h3" gutterBottom>
          Please upload your image
        </Typography>
        <DragDropFileUpload onFileUpload={onFileUpload} />
      </Box>
      <ResultModal
        result={result}
        open={open}
        handleOpen={handleOpen}
        handleClose={handleClose}
      />
    </Container>
  );
}

export default Main;
