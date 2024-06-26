package arxiv

import (
	"fmt"
	"io"
	"net/http"
	"regexp"
)

type Category struct {
	Term   string `xml:"term,attr"`
	Scheme string `xml:"scheme,attr"`
}

func GetCategoryLabels() map[string]string {
	url := "https://arxiv.org/category_taxonomy"
	resp, err := http.Get(url)
	if err != nil {
		fmt.Println("Error fetching URL: ", err)
		return nil
	}
	defer resp.Body.Close()
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("Error reading response body: ", err)
		return nil
	}

	return TransformLabels(body)
}

func TransformLabels(body []byte) map[string]string {
	pattern := `<h4>([a-z\-]+(\.[A-Z]+)?) <span>\(([^)]+)\)</span></h4>`
	re := regexp.MustCompile(pattern)
	matches := re.FindAllStringSubmatch(string(body), -1)

	categories := map[string]string{}
	for _, match := range matches {
		categories[match[1]] = match[3]
	}

	return categories
}
