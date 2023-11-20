markdown
# Lista de Usuários do Sistema

Este script Bash lista os usuários humanos do sistema juntamente com informações relevantes de suas contas, como nome de usuário, UID, diretório inicial e descrição do usuário.

## Uso

Para executar o script, utilize o seguinte comando:

```bash
./ListadeUsuarios.sh
```

## Pré-requisitos

Este script é projetado para sistemas Unix-like que usam o arquivo `/etc/passwd` para armazenar informações de conta de usuário.

## Detalhes do Script

O script realiza as seguintes etapas:
- Define os valores mínimos e máximos de UID para usuários regulares.
- Itera pelo arquivo `/etc/passwd`, filtrando os usuários com base nos UIDs definidos.
- Exibe as informações dos usuários humanos encontrados.

## Execução

Certifique-se de que o script tenha permissões de execução:
```bash
chmod +x ListadeUsuarios.sh
```

Em seguida, execute o script conforme mencionado anteriormente.

## Contribuição

Contribuições são bem-vindas! Se você deseja aprimorar este script, sinta-se à vontade para fazer um fork do repositório, fazer suas alterações e criar uma solicitação pull.

## Aviso

Este script foi desenvolvido para fins educacionais e de demonstração. Use-o com responsabilidade.
