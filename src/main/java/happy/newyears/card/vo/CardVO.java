package happy.newyears.card.vo;

import jakarta.annotation.Nullable;

public class CardVO {

    @Nullable
    private Integer idx; // 보낼 때 null일 수 있는 경우 @Nullable 추가
    private String nickname;
    private String content;
    private String img_url;
    @Nullable
    private boolean isSuccess;
    private String emoji;

    public void setEmoji(String emoji) {this.emoji = emoji;}

    public String getEmoji() {return emoji;}

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public boolean getIsSuccess() {
        return isSuccess;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(Integer idx) {
        this.idx = idx;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public String getNickname() {return nickname;}

    public void setNickname(String nickname) {this.nickname = nickname;}

    public String getContent() {return content;}

    public void setContent(String content) {this.content = content;}

    public CardVO(int idx, String nickname, String content, String img_url) {
        this.idx = idx;
        this.nickname = nickname;
        this.content = content;
        this.img_url = img_url;
    }

    public CardVO(){};

}
