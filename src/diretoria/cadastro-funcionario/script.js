const formcad = document.querySelector("#form-cad");

if (formcad) {
  formcad.addEventListener("submit", async (e) => {
    e.preventDefault();

    const dadosForm = new FormData(formcad);

    const nome = dadosForm.get("nome");
    const cargo = dadosForm.get("cargo");
    const email_pessoal = dadosForm.get("email-pessoal");
    const cpf = dadosForm.get("cpf");
    const sexo = dadosForm.get("sexo");
    const data_nascimento = dadosForm.get("data-nascimento");
    const telefone = dadosForm.get("telefone");

    if (
      !nome ||
      !cargo ||
      !email_pessoal ||
      !cpf ||
      !sexo ||
      !data_nascimento ||
      !telefone
    ) {
      Swal.fire({
        text: "Preencha todos os campos.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
      return;
    }

    try {
      const dados = await fetch("../backend/cadastro-funcionario.php", {
        method: "POST",
        body: dadosForm,
      });

      const resposta = await dados.json();

      Swal.fire({
        text: resposta["msg"],
        icon: resposta["status"] ? "success" : "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    } catch (error) {
      Swal.fire({
        text: "Erro ao processar o cadastro. Tente novamente mais tarde.",
        icon: "error",
        confirmButtonColor: "#3085d6",
        confirmButtonText: "Fechar",
      });
    }
  });
}
