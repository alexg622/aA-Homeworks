document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }


  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // --- your code here!


  };
  const update = (el) => {
    el.preventDefault();
    let lis = document.createElement("li")
    lis.textContent = document.querySelector(".favorite-input").value
    document.getElementById("sf-places").append(lis)
    document.querySelector(".favorite-input").value = ""
  }
  document.querySelector(".favorite-submit").addEventListener("click", update)



  // adding new photos

  // --- your code here!
document.querySelector(".photo-show-button").addEventListener("click", (e) => {
  const showForm = document.querySelector(".photo-form-container")
  console.log(showForm.className);
  if (showForm.className === "photo-form-container hidden")  {
    showForm.className = "photo-form-container"
  } else {
    showForm.className = "photo-form-container hidden"
  }
})

document.querySelector(".photo-url-submit").addEventListener("click", (e) => {
  e.preventDefault();
  let theText = document.querySelector(".photo-url-input").value
  let theIMG = document.createElement("img")
  theIMG.src = theText
  let liLI = document.createElement("li")
  liLI.append(theIMG)
  document.querySelector(".dog-photos").append(liLI)
  document.querySelector(".photo-url-input").value = ""
})

});
