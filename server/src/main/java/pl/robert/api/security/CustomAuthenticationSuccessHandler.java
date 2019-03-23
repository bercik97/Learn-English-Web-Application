package pl.robert.api.security;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    final Logger log = LoggerFactory.getLogger(getClass());

    int maxInactiveInterval;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) {
        log.info("User {} has been logged in", auth.getName());
        request.getSession().setMaxInactiveInterval(60 * maxInactiveInterval);
        clearAuthenticationAttributes(request);
    }
}