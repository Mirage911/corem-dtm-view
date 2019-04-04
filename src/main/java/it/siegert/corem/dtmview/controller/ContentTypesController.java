package it.siegert.corem.dtmview.controller;

import com.coremedia.cap.content.ContentRepository;
import com.coremedia.cap.content.ContentType;
import it.siegert.corem.dtmview.model.ContentTypeModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

import static java.util.Collections.singletonMap;
import static org.apache.commons.lang3.StringUtils.isEmpty;

/**
 * This is a mvc controller. It reads the current DocTypeModel and puts the dtm structure for the given doctype
 * in a ContentTypeModel for the ContentTypeModel-view
 */
@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Controller
@RequestMapping
public class ContentTypesController {

    @Autowired
    private ContentRepository contentRepository;

    @RequestMapping(value = "/contentTypes")
    public ModelAndView getContentType(HttpServletRequest request) {
        String doctype = request.getParameter("doctype");
        if (isEmpty(doctype)) {
            doctype = "CMObject";
        }
        ContentType contentType = contentRepository.getContentTypesByName().get(doctype);
        ContentType rootType = contentRepository.getContentTypesByName().get("Content_");
        String iorUrl = contentRepository.getConnection().getUrl();
        ContentTypeModel contentTypeModel = new ContentTypeModel(contentType, rootType, iorUrl);

        Map<String, ContentTypeModel> model = singletonMap("self", contentTypeModel);

        return new ModelAndView("default", model);
    }
}
