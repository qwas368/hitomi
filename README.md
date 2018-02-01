# Hitomi

This is a example of rest api server without phoenix framework. 

## Dependecies
- **elixir** v1.5
- **cowboy** v1.1
- [plug](https://github.com/elixir-plug/plug)
- [maru](https://github.com/elixir-maru/maru)
  
## Runing
```bash
iex -S mix
```

## Static Web Page
```bash
curl http://127.0.0.1:3456/index.html
```

## Rest API
**Post**
```bash
curl -H "Content-Type: application/json" \
     -X POST \
     -d '{"id":1, "url":"https://github.com/", "tag":["github"]}' \
     http://127.0.0.1:3456/api/v1/image
```

**Get**
```bash
curl http://127.0.0.1:3456/api/v1/image/123
```

## Test

```shell
mix test
```
