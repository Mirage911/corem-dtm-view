package it.siegert.corem.dtmview.model;

import com.coremedia.cap.content.ContentType;
import lombok.Getter;

/**
 * This class is a spring-mvc-model. It contains s DocTypeModel structure from the DocTypeModel-controller
 * to the DocTypeModel-view
 */
public class ContentTypeModel {

    @Getter
    private ContentType currentType;

    @Getter
    private ContentType rootType;

    @Getter
    private String iorUrl;

    public ContentTypeModel(ContentType currentType, ContentType rootType, String iorUrl) {
        this.currentType = currentType;
        this.rootType = rootType;
        this.iorUrl = iorUrl;
    }
}
