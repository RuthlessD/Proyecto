const login = document.querySelector(".login");
const registerLink = document.querySelector(".register-link");
const loginLink = document.querySelector(".login-link");

registerLink.onclick = () => {
  login.classList.add("active");
};

loginLink.onclick = () => {
  login.classList.remove("active");
};
