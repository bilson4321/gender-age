import * as React from "react";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";
import { Stack } from "@mui/material";

const style = {
  position: "absolute",
  top: "50%",
  left: "50%",
  transform: "translate(-50%, -50%)",
  width: 400,
  bgcolor: "background.paper",
  border: "1px solid #000",
  boxShadow: 24,
  p: 4,
};

export default function BasicModal(props) {
  return (
    <div>
      <Modal
        open={props.open}
        onClose={props.handleClose}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style}>
          {props?.result?.data?.map((item, index) => (
            <Stack direction={"row"} spacing={2}>
              <Box>
                <img
                  src={item.face_url}
                  style={{ height: 250, width: 250 }}
                  alt="person"
                />
              </Box>
              <Stack direction={"column"}  spacing={2}>
                <Typography
                  id="modal-modal-title"
                  variant="h6"
                  component="h2"
                  gutterBottom
                >
                  Gender:{item.gender}
                </Typography>
                <Typography
                  id="modal-modal-title"
                  variant="h6"
                  component="h2"
                  gutterBottom
                >
                  Age:{item.age}
                </Typography>
              </Stack>
            </Stack>
          ))}
        </Box>
      </Modal>
    </div>
  );
}
